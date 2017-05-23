#include "IMNetWorkMessageWidget.h"
#include <QDebug>
#include <QModelIndex>
#include <QListView>
#include <QMessageBox>
#include "CustomLineEdit.h"
#include "IMMainWidget.h"
#include <QTextBrowser>
#include <QFileDialog>
IMNetWorkMessageWidget::IMNetWorkMessageWidget(IMMainWidget *mainWidget,
                                               QWidget *parent) :
    IMMessageWidget(mainWidget, parent), m_mainWidget(mainWidget)
{
    if (m_mainWidget == NULL)
    {
        return;
    }
    setShowMode(NETWORK);
}


IMNetWorkMessageWidget::~IMNetWorkMessageWidget()
{
}

// public slots:------------------------------------

/*************************************************
Function Name： onClickDeleteDate()
Description:  删除某日的信息记录
*************************************************/
void IMNetWorkMessageWidget::onClickDeleteDate()
{
}


/*************************************************
Function Name： onClickDeleteDate()
Description:  删除某好友信息记录
*************************************************/
void IMNetWorkMessageWidget::onClickDeleteOne()
{
}

/*************************************************
Function Name： onClickDeleteAll()
Description:  删除全部消息记录
*************************************************/
void IMNetWorkMessageWidget::onClickDeleteAll()
{
}


/*************************************************
Function Name： onClickExportOne()
Description:  导出当前好友消息记录
*************************************************/
void IMNetWorkMessageWidget::onClickExportOne()
{
    if (m_indexOfFriendList < 0)
    {
        QString temp = QString(QStringLiteral("请先获取消息记录！"));
        QMessageBox::information(NULL, QStringLiteral("导出聊天记录"), temp);
        return;
    }
    if (m_tbMessageShow->toPlainText().isEmpty())
    {
        QString temp = QString(QStringLiteral("消息记录为空！"));
        QMessageBox::information(NULL, QStringLiteral("导出聊天记录"), temp);
        return;
    }

    QString history = NETWORK_HISTORY_MESSAGE_PATH;
    QDir dir = QDir::current();
    if (!dir.exists(history))
        dir.mkpath(history);

//    QString path = QString("%1/%2_%3").arg(history, m_myself.m_userID, id);
    QString filePath =history
            .append(QDateTime::currentDateTime().toString("yyyy-MM-dd_hh-mm-ss"));

    QString filter = QString(QStringLiteral("TXT文件 (*.txt)"));
    QString name = QFileDialog::getSaveFileName(this,QStringLiteral("保存文件"), filePath,
                                                filter);
    if(name.isEmpty())
    {
        return;
    }
    QFile file(name);
    bool isOpen = file.open(QFile::WriteOnly | QFile::Text);// | QFile::Append);
    if(!isOpen)
    {
        QMessageBox::warning(this,QStringLiteral("保存文件"),
                             QStringLiteral("无法保存文件:\n %1").arg(file.errorString()));
        return;
    }

    QTextStream out(&file);

    QString talkRecord = m_tbMessageShow->toPlainText();
    out << talkRecord;
    file.close();

    QString temp = QString(QStringLiteral("聊天记录导出成功:%1.")).arg(name);
    QMessageBox::information(NULL, QStringLiteral("导出聊天记录"), temp);

}

/*************************************************
Function Name： onClickExportAll()
Description:  导出所有消息记录
*************************************************/
void IMNetWorkMessageWidget::onClickExportAll()
{
//     int row = m_listViewFriend->currentIndex().row();
//     if (row < 0)
//         return;
//     m_mainWidget->exportLocalMessage(m_indexOfFriendList);
}

/*************************************************
Function Name： onClickGetMessage()
Description:  获取消息记录
*************************************************/
void IMNetWorkMessageWidget::onClickGetMessage()
{
     int row = m_listViewFriend->currentIndex().row();
     if (row < 0)
     {
         QString temp = QString(QStringLiteral("请先选择好友！"));
         QMessageBox::information(NULL, QStringLiteral("显示聊天记录"), temp);
         return;
     }
     m_date = m_leBirthday->getDate();
     qDebug() << "get  date:" <<  m_date;
     m_mainWidget->getNetWorkHistoryMessage(m_indexOfFriendList, m_date);

}

///*************************************************
//Function Name： friendItemClicked()
//Description:  单击好友列表项
//*************************************************/
//void IMNetWorkMessageWidget::friendItemClicked(const QModelIndex & index)
//{
//    qDebug() << "friend:" << index.row() << ":" << index.data().toString();
//    emit currentIndexClicked(index.row());
//}
