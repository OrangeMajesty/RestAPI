#ifndef TODOSERVERAPP_H
#define TODOSERVERAPP_H

#include <QObject>
#include <QTcpServer>
#include <QThreadPool>

/**
 * @brief The Server class.
 *      Main class in this the world.
 *
 * @details Handles rest requests from the user.
 */
class Server : public QTcpServer
{
    Q_OBJECT
public:

    /// Opens connections, configures ThreadPool
    explicit Server(QObject *parent = nullptr);

    /// Connection handler
    void incomingConnection(qintptr handle) override;

    /// Turns off the server correctly
    void shutdown();

private:
    bool running;

    QThreadPool* threadPool;
};

#endif // TODOSERVERAPP_H
