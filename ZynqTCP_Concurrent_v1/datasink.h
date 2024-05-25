#ifndef DATASINK_H
#define DATASINK_H

#include <QObject>
#include <QThread>

#include <ctime>
#include <QTimer>
#include <QtCore/QTextStream>

#include <QtCore/QFile>
#include <QtCore/QIODevice>
#include <QInputDialog>
#include <QFileDialog>
#include <QDialog>

#include <QCoreApplication>
#include <QHostAddress>
//#undef min
#include <concurrentqueue.h>
#include "apppipeprivate.h"

#include <windows.h>


#include <QMessageBox>
#include <QTime>

class Datasink : public QThread
{
    Q_OBJECT
public:
    Datasink(moodycamel::ConcurrentQueue<char> *cq);
    void TermDatasink();

private:
    moodycamel::ConcurrentQueue<char> *cqptr;
    AppPipe* DataSink;
    AppPipe* DataSource;

    QFile DataFile_Ch0;
    QFile CntFile_Ch0;
    QFile StatusFile_Ch0;
    QFile DelayFile_Ch0;

    uint32_t Frame_Length = 1024;
    uint32_t Data_Length = Frame_Length - 8;

    void run();
    int Term = 0;

};

#endif // DATASINK_H
