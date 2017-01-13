#include <QApplication>
#include <QQmlApplicationEngine>

#include "imageanalyser.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    ImageAnalyser imageAnalyser;

    imageAnalyser.ReadImage();

    //QQmlApplicationEngine engine;
    //engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    //return app.exec();
    return 0;
}

