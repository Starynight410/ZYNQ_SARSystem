#include "mycommtcp.h"
#include "qmessagebox.h"
#include "qdebug.h"

MyCOMMTCP::MyCOMMTCP()
{
    connect_socket = new QTcpSocket();          //port 7 Read AdcData from ZYNQ
    command_socket = new QTcpSocket();          //port 8 Send Command to ZYNQ
    data_socket = new QTcpSocket();             //port 10 Send DataReq to ZYNQ

    //将 connect_socket关联到 readMessage() 函数
//    QObject::connect(socket, &QTcpSocket::readyRead, this, &MyCOMMTCP::TCPReadData);
//    QObject::connect(socket, &QTcpSocket::bytesWritten, this, &MyCOMMTCP::TCPWrittenData);
}

int32_t MyCOMMTCP::ConnectTCP(QString ip_addr)
{
    QString IP;
    int connect_port,command_port,data_port;
    int connect_flag = 0;
    //获取IP地址
//    IP = ui->lineEdit_IP->text();
    IP = QString(ip_addr);
    //获取端口号
//    port = ui->lineEdit_Port->text().toInt();
    connect_port = 7;
    command_port = 8;
    data_port = 10;


    //取消已有的连接
    connect_socket-> abort();
    command_socket-> abort();
    data_socket -> abort();

//====================连接服务器 port 7=======================
    connect_socket->connectToHost(IP, connect_port);
    //等待连接成功
    if(!connect_socket->waitForConnected(200)){
//        qDebug() << "Port 7 Connection failed!";
         QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("Port 7 连接失败!"));
              return -1;
    }
    else{
        connect_flag += 1;
    }
    connect_socket->setSocketOption(QAbstractSocket::LowDelayOption,1);


//====================连接服务器 port 8=======================
    command_socket->connectToHost(IP, command_port);
    //等待连接成功
    if(!command_socket->waitForConnected(200)){
//        qDebug() << "Port 8 Connection failed!";
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("Port 8 连接失败!"));
        return -1;
    }
    else{
        connect_flag += 1;
    }
    command_socket->setSocketOption(QAbstractSocket::LowDelayOption,1);


//====================连接服务器 port 10=======================
    data_socket->connectToHost(IP, data_port);
    //等待连接成功
    if(!data_socket->waitForConnected(200)){
//    qDebug() << "Port 9 Connection failed!";
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("Port 10 连接失败!"));
        return -1;
    }
    else{
        connect_flag += 1;
    }
    data_socket->setSocketOption(QAbstractSocket::LowDelayOption,1);


    if(connect_flag == 3){
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("TCP连接成功"));
        return 0;
    }
    QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("TCP连接失败"));
    return -1;
}

int32_t MyCOMMTCP::DisConnectTCP()
{
    // 断开连接
    connect_socket->disconnectFromHost();
    command_socket->disconnectFromHost();
    data_socket->disconnectFromHost();
    return 0;
}

int32_t MyCOMMTCP::connected_TCPStatus()
{
    return (connect_socket->state() == QAbstractSocket::ConnectedState);
}

int32_t MyCOMMTCP::command_TCPStatus()
{
    return (command_socket->state() == QAbstractSocket::ConnectedState);
}

int32_t MyCOMMTCP::data_TCPStatus()
{
    return (data_socket->state() == QAbstractSocket::ConnectedState);
}

void MyCOMMTCP::TCPReadData()
{

}

int32_t MyCOMMTCP::Command_Port_WriteData(uint8_t *CommandBuffer, uint32_t len)
{
    if(command_TCPStatus() != 1){
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("Port8未连接"));
        return -1;
    }
    command_socket->write((char*)CommandBuffer, len);
    return 0;
}

int32_t MyCOMMTCP::Data_Port_WriteData(uint8_t *DataPortBuffer, uint32_t len)
{
    if(data_TCPStatus() != 1){
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("Port10未连接"));
        return -1;
    }
    data_socket->write((char*)DataPortBuffer, len);
    return 0;
}

