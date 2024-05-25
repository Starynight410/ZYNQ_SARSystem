#ifndef APPPIPEPRIVATE_H
#define APPPIPEPRIVATE_H

#include <private/qiodevice_p.h>
#include <private/qringbuffer_p.h>
#include <QScopedValueRollback>
#include <algorithm>
#include <climits>

#ifndef Q_DECL_OVERRIDE
#define Q_DECL_OVERRIDE
#endif

class AppPipePrivate : public QIODevicePrivate {
  public:
   const QByteArray *writeData;
#if QT_VERSION < QT_VERSION_CHECK(5, 7, 0)
   QRingBuffer buffer;
   QRingBuffer writeBuffer;
   int writeBufferChunkSize;
#endif
   AppPipePrivate() : writeData(0) { writeBufferChunkSize = 4096; }
};
/// A simple point-to-point intra-process pipe. The other endpoint can live in any
/// thread.
class AppPipe : public QIODevice {
   Q_OBJECT
   Q_DECLARE_PRIVATE(AppPipe)
   static inline int intLen(qint64 len) { return int(std::min(len, qint64(INT_MAX))); }
   Q_SLOT void _a_write(const QByteArray &data) {
      Q_D(AppPipe);
      if (!(d->openMode & QIODevice::ReadOnly)) return;  // We must be readable.
      d->buffer.append(data);  // This is a chunk shipped from the source.
      emit hasIncoming(data);
      emit readyRead();
   }
   void hasOutgoingLong(const char *data, qint64 len) {
      while (len) {
         int const size = intLen(len);
         emit hasOutgoing(QByteArray(data, size));
         data += size;
         len -= size;
      }
   }

  public:
   AppPipe(QIODevice::OpenMode mode, QObject *parent = 0)
       : QIODevice(*new AppPipePrivate, parent) {
      open(mode);
   }
   AppPipe(AppPipe *other, QIODevice::OpenMode mode, QObject *parent = 0)
       : QIODevice(*new AppPipePrivate, parent) {
      open(mode);
      addOther(other);
   }
   AppPipe(AppPipe *other, QObject *parent = 0) : QIODevice(*new AppPipePrivate, parent) {
      addOther(other);
   }
   ~AppPipe() Q_DECL_OVERRIDE {}
   void addOther(AppPipe *other) {
      if (other) {
         connect(this, SIGNAL(hasOutgoing(QByteArray)), other, SLOT(_a_write(QByteArray)),
                 Qt::UniqueConnection);
         connect(other, SIGNAL(hasOutgoing(QByteArray)), this, SLOT(_a_write(QByteArray)),
                 Qt::UniqueConnection);
      }
   }
   void removeOther(AppPipe *other) {
      disconnect(this, SIGNAL(hasOutgoing(QByteArray)), other,
                 SLOT(_a_write(QByteArray)));
      disconnect(other, SIGNAL(hasOutgoing(QByteArray)), this,
                 SLOT(_a_write(QByteArray)));
   }
   void flush() {
      Q_D(AppPipe);
      while (!d->writeBuffer.isEmpty()) {
         QByteArray const data = d->writeBuffer.read();
         emit hasOutgoing(data);
         emit bytesWritten(data.size());
      }
   }
   void close() Q_DECL_OVERRIDE {
      Q_D(AppPipe);
      flush();
      QIODevice::close();
      d->buffer.clear();
   }
   qint64 write(const QByteArray &data) {  // This is an optional optimization. The base
                                           // method works OK.
      Q_D(AppPipe);
      QScopedValueRollback<const QByteArray *> back(d->writeData);
      if (!(d->openMode & Text)) d->writeData = &data;
      return QIODevice::write(data);
   }
   qint64 writeData(const char *data, qint64 len) Q_DECL_OVERRIDE {
      Q_D(AppPipe);
      bool buffered = !(d->openMode & Unbuffered);
      if (buffered && (d->writeBuffer.size() + len) > d->writeBufferChunkSize) flush();
      if (!buffered || len > d->writeBufferChunkSize ||
          (len == d->writeBufferChunkSize && d->writeBuffer.isEmpty())) {
         if (d->writeData && d->writeData->data() == data && d->writeData->size() == len)
            emit hasOutgoing(*d->writeData);
         else
            hasOutgoingLong(data, len);
      } else
         std::copy(data, data + len, d->writeBuffer.reserve(qint32(len)));
      return len;
   }
   bool isSequential() const Q_DECL_OVERRIDE { return true; }
   Q_SIGNAL void hasOutgoing(const QByteArray &);
   Q_SIGNAL void hasIncoming(const QByteArray &);
#if QT_VERSION >= QT_VERSION_CHECK(5, 7, 0)
   // all the data is in the read buffer already
   qint64 readData(char *, qint64) Q_DECL_OVERRIDE { return 0; }
#else
   qint64 readData(char *data, qint64 len) Q_DECL_OVERRIDE {
      Q_D(AppPipe);
      qint64 hadRead = 0;
      while (len && !d->buffer.isEmpty()) {
         int size = d->buffer.read(data, intLen(len));
         hadRead += size;
         data += size;
         len -= size;
      }
      return hadRead;
   }
   bool canReadLine() const Q_DECL_OVERRIDE {
      Q_D(const AppPipe);
      return d->buffer.indexOf('\n') != -1 || QIODevice::canReadLine();
   }
   qint64 bytesAvailable() const Q_DECL_OVERRIDE {
      Q_D(const AppPipe);
      return QIODevice::bytesAvailable() + d->buffer.size();
   }
   qint64 bytesToWrite() const Q_DECL_OVERRIDE {
      Q_D(const AppPipe);
      return QIODevice::bytesToWrite() + d->writeBuffer.size();
   }
#endif
};

#endif // APPPIPEPRIVATE_H
