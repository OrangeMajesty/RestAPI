#ifndef TODOSERVERAPP_H
#define TODOSERVERAPP_H

#include <QObject>
#include <QTcpServer>

class Server : public QObject
{
    Q_OBJECT
public:
    Server();
    virtual ~Server();

private:
     QTcpServer* serv;

public slots:
    void newRequest();
    void newSocket();
};

#endif // TODOSERVERAPP_H
