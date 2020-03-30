#ifndef TODOSERVERAPP_H
#define TODOSERVERAPP_H

#include <QObject>
#include <QTcpServer>

/**
 * @brief The Server class.
 *      Main class in this the world.
 *
 * @details Handles rest requests from the user.
 */
class Server : public QObject
{
    Q_OBJECT
public:

    /// Constructor. Opens connections, configures handlers
    Server();

    /// Closes the connection
    virtual ~Server();

private:

    /// TCPServer object
     QTcpServer* serv;

public slots:

    /// Handler for a new connection from the client
    void newConnection();

    /// Client request response handler
    void requestResponse();
};

#endif // TODOSERVERAPP_H
