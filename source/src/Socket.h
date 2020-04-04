#ifndef SOCKET_H
#define SOCKET_H

#include <QObject>
#include <QRunnable>

/**
 * @brief The Socket class
 */
class Socket : public QRunnable, public QObject
{
public:

    /// Sets the handle
    Socket(int descriptor);

    /// Handles the connection
    void run() override;

private:
    int descriptor;
};

#endif // SOCKET_H
