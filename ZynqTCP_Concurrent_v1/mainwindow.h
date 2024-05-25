#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "mycommtcp.h"
#include <concurrentqueue.h>
#include "datasink.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    moodycamel::ConcurrentQueue<char> *cqptr;
    Datasink *DatasinkPtr;

private slots:
    void on_PB_TCPConnect_clicked();
    void on_PB_StartSampling_clicked();
    void readData();

    void on_PB_StopSampling_clicked();

private:
    Ui::MainWindow *ui;
    int32_t Send_DataReq();
    void process_DataReq();
};
#endif // MAINWINDOW_H
