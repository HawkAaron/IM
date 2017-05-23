#include <QApplication>
#include <QTextCodec>
#include "view/IMLoginWidget.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QTextCodec::setCodecForLocale(QTextCodec::codecForName("utf-8"));

    IMLoginWidget w;
    w.show();
    if (w.getIsAutoLogin())
    {
        w.onClickBtnLogin();
    }

    return a.exec();
}
