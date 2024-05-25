#ifndef MYCOMMTCP_H
#define MYCOMMTCP_H

//#include "MyConfig.h"

#include "qfuture.h"
#include "qthread.h"
#include <QtConcurrent/QtConcurrent>
#include <QtNetwork/QTcpSocket>

class MyCOMMTCP : public QObject
{
public:
    MyCOMMTCP();
    QTcpSocket *socket;
    QTcpSocket *connect_socket;
    QTcpSocket *data_socket;
    QTcpSocket *command_socket;
    volatile int socket_finished;
    int32_t ConnectTCP(QString ip_addr);
    int32_t DisConnectTCP();
    int32_t connected_TCPStatus();
    int32_t uart_TCPStatus();
    int32_t command_TCPStatus();
    int32_t data_TCPStatus();
    void TCPReadData();
    int32_t Command_Port_WriteData(uint8_t *CommandBuffer, uint32_t len);
    int32_t Uart_Port_WriteData(uint8_t *UartBuffer, uint32_t len);
    int32_t Data_Port_WriteData(uint8_t *DataPortBuffer, uint32_t len);
private:

private slots:
};

#endif // MYCOMMTCP_H
