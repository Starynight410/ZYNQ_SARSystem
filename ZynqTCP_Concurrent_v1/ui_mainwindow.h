/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGroupBox *GB_TCPConnect;
    QLabel *IP_addr;
    QLineEdit *LE_IPAddressInput;
    QPushButton *PB_TCPConnect;
    QGroupBox *GB_SerialPort;
    QGroupBox *GB_RFControl;
    QPushButton *PB_StartSampling;
    QPushButton *PB_StopSampling;
    QMenuBar *menuBar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(683, 481);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        GB_TCPConnect = new QGroupBox(centralwidget);
        GB_TCPConnect->setObjectName(QString::fromUtf8("GB_TCPConnect"));
        GB_TCPConnect->setGeometry(QRect(20, 20, 371, 91));
        QFont font;
        font.setFamily(QString::fromUtf8("SimSun-ExtB"));
        font.setPointSize(10);
        GB_TCPConnect->setFont(font);
        IP_addr = new QLabel(GB_TCPConnect);
        IP_addr->setObjectName(QString::fromUtf8("IP_addr"));
        IP_addr->setGeometry(QRect(20, 40, 51, 21));
        LE_IPAddressInput = new QLineEdit(GB_TCPConnect);
        LE_IPAddressInput->setObjectName(QString::fromUtf8("LE_IPAddressInput"));
        LE_IPAddressInput->setGeometry(QRect(80, 30, 161, 41));
        LE_IPAddressInput->setCursorPosition(12);
        PB_TCPConnect = new QPushButton(GB_TCPConnect);
        PB_TCPConnect->setObjectName(QString::fromUtf8("PB_TCPConnect"));
        PB_TCPConnect->setGeometry(QRect(260, 40, 93, 29));
        GB_SerialPort = new QGroupBox(centralwidget);
        GB_SerialPort->setObjectName(QString::fromUtf8("GB_SerialPort"));
        GB_SerialPort->setGeometry(QRect(20, 120, 641, 321));
        GB_SerialPort->setFont(font);
        GB_RFControl = new QGroupBox(centralwidget);
        GB_RFControl->setObjectName(QString::fromUtf8("GB_RFControl"));
        GB_RFControl->setGeometry(QRect(400, 20, 261, 91));
        GB_RFControl->setFont(font);
        PB_StartSampling = new QPushButton(GB_RFControl);
        PB_StartSampling->setObjectName(QString::fromUtf8("PB_StartSampling"));
        PB_StartSampling->setGeometry(QRect(20, 40, 101, 29));
        PB_StopSampling = new QPushButton(GB_RFControl);
        PB_StopSampling->setObjectName(QString::fromUtf8("PB_StopSampling"));
        PB_StopSampling->setGeometry(QRect(140, 40, 101, 29));
        MainWindow->setCentralWidget(centralwidget);
        menuBar = new QMenuBar(MainWindow);
        menuBar->setObjectName(QString::fromUtf8("menuBar"));
        menuBar->setGeometry(QRect(0, 0, 683, 21));
        MainWindow->setMenuBar(menuBar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        GB_TCPConnect->setTitle(QCoreApplication::translate("MainWindow", "TCP/IP\350\277\236\346\216\245", nullptr));
        IP_addr->setText(QCoreApplication::translate("MainWindow", "IP\345\234\260\345\235\200", nullptr));
        LE_IPAddressInput->setText(QCoreApplication::translate("MainWindow", "192.168.1.10", nullptr));
        PB_TCPConnect->setText(QCoreApplication::translate("MainWindow", "\350\277\236\346\216\245TCP", nullptr));
        GB_SerialPort->setTitle(QCoreApplication::translate("MainWindow", "\344\270\262\345\217\243\350\260\203\350\257\225", nullptr));
        GB_RFControl->setTitle(QCoreApplication::translate("MainWindow", "\346\225\260\346\215\256\351\207\207\351\233\206\346\216\247\345\210\266", nullptr));
        PB_StartSampling->setText(QCoreApplication::translate("MainWindow", "\345\274\200\345\247\213\351\207\207\351\233\206", nullptr));
        PB_StopSampling->setText(QCoreApplication::translate("MainWindow", "\347\273\223\346\235\237\351\207\207\351\233\206", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
