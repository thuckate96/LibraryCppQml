#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>
#include <QQmlContext>
#include "src/numberup.h"
#include <QtQml>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    qmlRegisterType<NumberUp>("numberUpLib", 1, 0, "NumberUp");

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
