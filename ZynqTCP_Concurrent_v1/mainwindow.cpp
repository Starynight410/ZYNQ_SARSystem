#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "qmessagebox.h"
#include "mycommtcp.h"
#include <QLineEdit>
#include <QDebug>
#include <cstring>
#include "qobject.h"
#include "windows.h"

#define SmallToBigEndianu32(x) ((((x) & 0xff) << 24) | \
                                (((x) & 0xff00) << 8) | \
                                (((x) & 0xff0000) >> 8) | \
                                (((x) & 0xff000000) >> 24))

#define BigToSmallEndianu32(x) ((((x) & 0xff) << 24) | \
                                (((x) & 0xff00) << 8) | \
                                (((x) & 0xff0000) >> 8) | \
                                (((x) & 0xff000000) >> 24))

#define SmallToBigEndianu16(x) ((((x) & 0xff) << 8) | (((x) & 0xff00) >> 8))

#define BigToSmallEndianu16(x) ((((x) & 0xff) << 8) | (((x) & 0xff00) >> 8))

#define SmallToBigEndianuint8_t(x) (x)

#define BigToSmallEndianuint8_t(x) (x)

MyCOMMTCP CommTCP;
uint8_t command_buffer[64]; //port 8
uint8_t *command_ptr;
uint8_t revdata[64];
uint8_t revdata_tmp[64];

uint32_t Frame_Length = 1024 + 8;
uint32_t Data_Length = 1024;

QFile DataFile_CH0;
QFile StatusFile_CH0;

//==========================StartTCPTransfer================================
struct StartTCPTransfer{
    uint16_t header;
    uint8_t StartMark;
};
StartTCPTransfer* StartTCPTransfer_ptr;
uint8_t TCP_Func = 0;   //选择TCP工作模式，3为发送1chirp

//===============================DataReq=====================================
#pragma pack(push)
#pragma pack(1)
struct DataReq{
    uint16_t header;
    uint8_t TCP_FuncReq;
};
DataReq DataReq;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    // GUI initiailize
//    ui->LE_IPAddressInput->setText("192.168.1.10");
    ui->LE_IPAddressInput->setText("127.0.0.1");
    QObject::connect(CommTCP.connect_socket, &QTcpSocket::readyRead, this, &MainWindow::readData);
    cqptr = new moodycamel::ConcurrentQueue<char>;
}

MainWindow::~MainWindow()
{
    delete ui;
}

// port7接收TCP开始信号,StartTCPTransfer包头：8f8e
void MainWindow::readData()
{

    while(CommTCP.connect_socket->bytesAvailable() > 0)
    {
        QByteArray datagram;
        datagram.resize(CommTCP.connect_socket->bytesAvailable());
        CommTCP.connect_socket->read(datagram.data(), datagram.size());
        char *buf;
        buf = datagram.data();
        if((*(uint8_t *)buf == 0x8f) && ((*(uint8_t *)(buf + 1) == 0x8e)))
        {
            memcpy(revdata_tmp,buf,sizeof(StartTCPTransfer));
            StartTCPTransfer_ptr = (StartTCPTransfer*) (&revdata_tmp);
            TCP_Func = StartTCPTransfer_ptr -> StartMark;
            qDebug("TCP_Func = %01x",TCP_Func);
            QObject::disconnect(CommTCP.connect_socket, &QTcpSocket::readyRead, this, &MainWindow::readData);
            Send_DataReq();
            process_DataReq();
        }
    }
}

// port10发送DataReq信号，DataReq包头：9f9e
int32_t MainWindow::Send_DataReq()
{
    uint8_t* DataReq_ptr;
    DataReq.header = BigToSmallEndianu16(0x9f9e);
    DataReq.TCP_FuncReq = TCP_Func;
    DataReq_ptr = (uint8_t *)&DataReq;
    if((CommTCP.Data_Port_WriteData(DataReq_ptr,sizeof (DataReq))) == 0)
    {
        return 0;
    }
}

// 接收port10采集数据
void MainWindow::process_DataReq()
{
//=========================ReadData from Zynq==============================
    while(CommTCP.data_socket->bytesAvailable() < Frame_Length)
    {
        CommTCP.data_socket->waitForReadyRead(100);
    }

    CommTCP.data_socket->read(((char *)revdata),Frame_Length);

    //ConcurrentQueue
    cqptr->enqueue_bulk(revdata, Frame_Length);
    QObject::connect(CommTCP.connect_socket, &QTcpSocket::readyRead, this, &MainWindow::readData);
}


void MainWindow::on_PB_TCPConnect_clicked()
{
//     char* ip_addr;
    QString  ip_addr;
    if (ui->PB_TCPConnect->text() == QStringLiteral("连接TCP"))
    {
        QByteArray byte = ui->LE_IPAddressInput->text().toLatin1();//必须加
        ip_addr = byte.data();
        if(CommTCP.ConnectTCP(ip_addr) == 0)
        {
            ui->PB_TCPConnect->setText(QStringLiteral("关闭TCP"));
        }
        else
        {
            ui->PB_TCPConnect->setText(QStringLiteral("连接TCP"));
        }
    }
    else if(ui->PB_TCPConnect->text() == QStringLiteral("关闭TCP"))
    {
//        断开7,8,10端口的TCP socket连接
        CommTCP.DisConnectTCP();
        ui->PB_TCPConnect->setText(QStringLiteral("连接TCP"));
    }
}

void MainWindow::on_PB_StartSampling_clicked()
{
    //send 0x7f7e62bb through tcp port 8，开始采集包头：7f7e
   command_buffer[0] = 0x7f;
   command_buffer[1] = 0x7e;
   command_buffer[2] = 0x62;
   command_buffer[3] = 0xbb;
   command_ptr = command_buffer;
   int len = 4;
//    len = sizeof(command_buffer)/sizeof(command_buffer[0]);

   CommTCP.Command_Port_WriteData(command_ptr,len);
//    clean command_buffer
   memset(command_buffer,0,sizeof(command_buffer));

   DatasinkPtr = new Datasink(cqptr);
   DatasinkPtr->start();
}

void MainWindow::on_PB_StopSampling_clicked()
{
    DatasinkPtr->TermDatasink();
    DatasinkPtr->quit();
    DatasinkPtr->wait();
    delete DatasinkPtr;
}
