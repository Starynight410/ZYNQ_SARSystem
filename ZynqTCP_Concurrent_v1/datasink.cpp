#include "datasink.h"
uint8_t Data_Buff[10240];

//QTimer *timer = new QTimer(this);
//connect(timer, &QTimer::timeout, this, &MainWindow::emptycheck);
//timer->start(200);

Datasink::Datasink(moodycamel::ConcurrentQueue<char> *cq)
{
    cqptr = cq;
}
void Datasink::TermDatasink()
{
    Term = 1;
}
void Datasink::run()
{
    Term = 0;
    DataFile_Ch0.setFileName(".\\Data\\"+QDateTime::currentDateTime().toString("yyyyMMdd_hhmmss_zzz") + "_IF1_Data.bin");

//    CntFile_Ch0.setFileName(".\\Data\\"+QDateTime::currentDateTime().toString("yyyyMMdd_hhmmss_zzz") + "_IF1_Seq.bin");

//    StatusFile_Ch0.setFileName(".\\Data\\"+QDateTime::currentDateTime().toString("yyyyMMdd_hhmmss_zzz") + "_IF1_status.bin");

//    DelayFile_Ch0.setFileName(".\\Data\\"+QDateTime::currentDateTime().toString("yyyyMMdd_hhmmss_zzz") + "_IF1_Delay.bin");

//================================Data File=================================
    if(!DataFile_Ch0.open(QIODevice::WriteOnly)){
        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("打开RAW.bin失败"));
        return;
    }

////================================Sequence File=================================
//    if(!CntFile_Ch0.open(QIODevice::WriteOnly)){
//        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("打开RAW.bin失败"));
//        return;
//    }

////================================Status File=================================
//    if(!StatusFile_Ch0.open(QIODevice::WriteOnly)){
//        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("打开RAW.bin失败"));
//        return;
//    }

////================================Delay File=================================
//    if(!DelayFile_Ch0.open(QIODevice::WriteOnly)){
//        QMessageBox::information(NULL, QStringLiteral("提示"), QStringLiteral("打开RAW.bin失败"));
//        return;
//    }

    while(!Term)
    {
        if (cqptr->size_approx()>=Frame_Length)
        {
            cqptr->try_dequeue_bulk(Data_Buff, Frame_Length);
            qDebug("0x%02x, 0x%02x", Data_Buff[0], Data_Buff[1]);
            if((Data_Buff[0] == 0xaf) && (Data_Buff[1] == 0xae))    //有效数据包头afae
            {
                 //写入数据
                 DataFile_Ch0.write((const char*)(Data_Buff+8), Data_Length);
//                 //写入序号
//                 CntFile_Ch0.write((const char*)(Data_Buff+2), 1);
//    //                 qDebug("Data_Buff+2 = %d",Data_Buff[2]);
//                 //写入标志位 & Delay
//                 if(Data_Buff[2] == 0x00)
//                 {
//                    StatusFile_Ch0.write((const char*)(Data_Buff+3), 1);
//                    DelayFile_Ch0.write((const char*)(Data_Buff+4), 4);
//                 }
            }
        }
    }

    DataFile_Ch0.flush();
    DataFile_Ch0.close();

//    CntFile_Ch0.flush();
//    CntFile_Ch0.close();

//    StatusFile_Ch0.flush();
//    StatusFile_Ch0.close();

//    DelayFile_Ch0.flush();
//    DelayFile_Ch0.close();

}
