#include "Rest.h"
#include "Server.h"
#include "Socket.h"

/**
 * @brief Server::Server
 */
Server::Server(QObject *parent) : QTcpServer(parent)
{
    running = true;

    threadPool = new QThreadPool(this);
    threadPool->setMaxThreadCount(5);

    // Check server
    if(!listen(QHostAddress::Any, 80))
        throw "Fatal Error: Host Listening Error.";
    else
        qDebug() << "Host is listening!";
}

/**
 * @brief Server::incomingConnection
 * @param handle - descriptor
 */
void Server::incomingConnection(qintptr handle)
{
    if(running)
    {
        Socket* socket = new Socket(handle);
        socket->setAutoDelete(true);
        threadPool->start(socket);
    }
}

/**
 * @brief Server::shutdown
 */
void Server::shutdown()
{
    qDebug() << "Server stop";

    running = false;

    threadPool->waitForDone();
}

