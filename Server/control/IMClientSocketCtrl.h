/*********************************************
File Name： IMClientSocketCtrl.h
Author： jet.F.R
Date： 2014.3.10
Description： 用于控制客户端socket的类
Changes：
********************************************/

#ifndef IMCLIENTSOCKETCTRL_H
#define IMCLIENTSOCKETCTRL_H

#include <QTcpSocket>
#include "IMDatabaseCtrl.h"
#include "model/IMConstant.h"

class QDateTime;
class IMUser;


/*************************************************
Class Name： IMClientSocketCtrl
Description: 来自客户端socket，用于处理各种请求
*************************************************/
class IMClientSocketCtrl : public QTcpSocket
{
    Q_OBJECT
public:
    IMClientSocketCtrl(QObject *parent = 0);
    ~IMClientSocketCtrl();

signals:
//    void havaNewClientSocket(IMClientSocket *);
    // 请求server处理
    void sendSignal(const SaveTmpInformation &temp);
    // 用户登录
    void userLoginSignal(const UserInformation &user);
    //用户断开连接了
    void deleteSignal(const QString &acc);

public slots:
    // 接收信息
    void receiveMessage();
    // 发送信息
    void sendMessage(const SaveTmpInformation &temp);
    // 删除socket
    void deleteScoket();

private:
    quint16 m_blockSize;
    SaveTmpInformation m_save;

private:
    IMDatabaseCtrl m_database;

};

#endif // IMCLIENTSOCKETCTRL_H
