#include "Server.h"
#include <QTcpServer>
#include <QTcpSocket>
#include <QTextStream>
#include <QHostAddress>
#include <QDateTime>

/**
 * @brief Server::Server
 */
Server::Server()
{
    serv = new QTcpServer(this);

    // We catch new connections
    connect(serv, &QTcpServer::newConnection, this, &Server::newConnection);

    // Check server
    if(!serv->listen(QHostAddress::Any, 80))
        throw "Fatal Error: Host Listening Error.";
    else
        qDebug() << "Host is listening!";
}

/**
 * @brief Server::~Server
 * @todo Handle graceful shutdown
 */
Server::~Server()
{

}

/**
 * @brief Server::newConnection
 */
void Server::newConnection()
{
    // We process everyone who is waiting
    while (serv->hasPendingConnections())
    {
        QTcpSocket* socket = serv->nextPendingConnection();

        // We wait until the client is ready to transfer data
        connect(socket, SIGNAL(readyRead()), this, SLOT(requestResponse()));
    }
}

/**
 * @brief Server::requestResponse
 */
void Server::requestResponse()
{
    // We receive the sender
    QTcpSocket* socket = (QTcpSocket*)sender();

    // Preparing a text stream for data transfer
    QTextStream stream(socket);

    // Preparing the answer
    stream << "HTTP/1.0 200 Ok\r\n"
            "Content-Type: text/html; charset=\"utf-8\"\r\n"
            "\r\n"
            "<h1>Nothing to see here</h1>\n"
            << QDateTime::currentDateTime().toString() << "\n";

    qDebug() << "data " << socket->readAll();

    // Closing the connection
    socket->close();
}
