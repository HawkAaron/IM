#-------------------------------------------------
#
# Project created by QtCreator 2017-05-23T10:08:52
#
#-------------------------------------------------

QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Client
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
    control/IMClientFileCtrl.cpp \
    control/IMDatabaseCtrl.cpp \
    control/IMLoginCtrl.cpp \
    control/IMMailCtrl.cpp \
    control/IMMainCtrl.cpp \
    control/IMRegisterCtrl.cpp \
    model/IMTcpSocket.cpp \
    model/IMUser.cpp \
    view/CalendarDialog.cpp \
    view/CustomCalendar.cpp \
    view/CustomComboBox.cpp \
    view/CustomLineEdit.cpp \
    view/IMChatWidget.cpp \
    view/IMClickLabel.cpp \
    view/IMDiscussionButton.cpp \
    view/IMDiscussionChatWidget.cpp \
    view/IMDiscussionInformationWidget.cpp \
    view/IMDiscussionListWidget.cpp \
    view/IMDiscussionMemberButton.cpp \
    view/IMDiscussionMemberListWidget.cpp \
    view/IMFileReceiverWidget.cpp \
    view/IMFileSenderWidget.cpp \
    view/IMFlockButton.cpp \
    view/IMFlockChatWidget.cpp \
    view/IMFlockInformationWidget.cpp \
    view/IMFlockListWidget.cpp \
    view/IMFlockMemberButton.cpp \
    view/IMFlockMemberListWidget.cpp \
    view/IMForgotPwdWidget.cpp \
    view/IMFriendButton.cpp \
    view/IMFriendListWidget.cpp \
    view/IMInformationWidget.cpp \
    view/IMInputTextEdit.cpp \
    view/IMLatestMessageListWidget.cpp \
    view/IMLinkButton.cpp \
    view/IMLinkDiscussionButton.cpp \
    view/IMLinkFlockButton.cpp \
    view/IMLinkFriendButton.cpp \
    view/IMLittleWidget.cpp \
    view/IMLocalMessageWidget.cpp \
    view/IMLoginWidget.cpp \
    view/IMMailButton.cpp \
    view/IMMailInformationWidget.cpp \
    view/IMMailInWidget.cpp \
    view/IMMailListWidget.cpp \
    view/IMMailOutWidget.cpp \
    view/IMMailWidget.cpp \
    view/IMMailWriteWidget.cpp \
    view/IMMainWidget.cpp \
    view/IMMessageManageWidget.cpp \
    view/IMMessageWidget.cpp \
    view/IMNetWorkMessageWidget.cpp \
    view/IMRegisterWidget.cpp \
    view/IMSearchListWidget.cpp \
    view/IMToolBox.cpp \
    main.cpp

HEADERS  += \
    control/IMClientFileCtrl.h \
    control/IMDatabaseCtrl.h \
    control/IMLoginCtrl.h \
    control/IMMailCtrl.h \
    control/IMMainCtrl.h \
    control/IMRegisterCtrl.h \
    model/IMConstant.h \
    model/IMTcpSocket.h \
    model/IMUser.h \
    view/CalendarDialog.h \
    view/CustomCalendar.h \
    view/CustomComboBox.h \
    view/CustomLineEdit.h \
    view/IMChatWidget.h \
    view/IMClickLabel.h \
    view/IMDiscussionButton.h \
    view/IMDiscussionChatWidget.h \
    view/IMDiscussionInformationWidget.h \
    view/IMDiscussionListWidget.h \
    view/IMDiscussionMemberButton.h \
    view/IMDiscussionMemberListWidget.h \
    view/IMFileReceiverWidget.h \
    view/IMFileSenderWidget.h \
    view/IMFlockButton.h \
    view/IMFlockChatWidget.h \
    view/IMFlockInformationWidget.h \
    view/IMFlockListWidget.h \
    view/IMFlockMemberButton.h \
    view/IMFlockMemberListWidget.h \
    view/IMForgotPwdWidget.h \
    view/IMFriendButton.h \
    view/IMFriendListWidget.h \
    view/IMInformationWidget.h \
    view/IMInputTextEdit.h \
    view/IMLatestMessageListWidget.h \
    view/IMLinkButton.h \
    view/IMLinkDiscussionButton.h \
    view/IMLinkFlockButton.h \
    view/IMLinkFriendButton.h \
    view/IMLittleWidget.h \
    view/IMLocalMessageWidget.h \
    view/IMLoginWidget.h \
    view/IMMailButton.h \
    view/IMMailInformationWidget.h \
    view/IMMailInWidget.h \
    view/IMMailListWidget.h \
    view/IMMailOutWidget.h \
    view/IMMailWidget.h \
    view/IMMailWriteWidget.h \
    view/IMMainWidget.h \
    view/IMMessageManageWidget.h \
    view/IMMessageWidget.h \
    view/IMNetWorkMessageWidget.h \
    view/IMRegisterWidget.h \
    view/IMSearchListWidget.h \
    view/IMToolBox.h
