#include "view/IMServerWindow.h"
#include <QApplication>
#include <QTextCodec>

int main(int argc, char *argv[])
{
    QTextCodec::setCodecForLocale(QTextCodec::codecForName("utf-8"));

    QApplication a(argc, argv);

    IMServerWindow w;
    w.show();

    return a.exec();
}
