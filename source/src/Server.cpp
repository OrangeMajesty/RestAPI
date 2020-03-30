#include "Server.h"
#include <QTcpServer>
#include <QTcpSocket>
#include <QTextStream>
#include <QHostAddress>
#include <QDateTime>
#include <iostream>

Server::Server()
{
    serv = new QTcpServer(this);
//    connect(serv, SIGNAL(newConnection()), this, SLOT(newRequest()));

    connect(serv, &QTcpServer::newConnection, this, &Server::newRequest);

    if(!serv->listen(QHostAddress::Any, 80))
    {
        qDebug() << "error. " << serv->errorString();
    } else
    {
        qDebug() << "success";
        qDebug() << serv->isListening() << "TCPSocket listen on port";
    }

//    while (1) {

//    }
//    std::getchar();
}

Server::~Server()
{

}

void Server::newRequest()
{
    QTcpSocket* socket = serv->nextPendingConnection();
    connect(socket, SIGNAL(readyRead()), this, SLOT(newSocket()));
    qDebug() << "newRequest";


}

void Server::newSocket()
{
    QTcpSocket* socket = (QTcpSocket*)sender();
    QTextStream stream(socket);
    stream.setAutoDetectUnicode(true);

    stream << "HTTP/1.0 200 Ok\r\n"
            "Content-Type: text/html; charset=\"utf-8\"\r\n"
            "\r\n"
            "<h1>Nothing to see here</h1>\n"
            << QDateTime::currentDateTime().toString() << "\n";

    qDebug() << "data " << socket->readAll();

//    socket->write <<

    socket->close();
}
