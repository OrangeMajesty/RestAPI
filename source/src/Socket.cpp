#include "Rest.h"
#include "Socket.h"
#include <QTcpSocket>

Socket::Socket(int descriptor) : descriptor(descriptor)
{
}

void Socket::run()
{
    // We receive the sender
    QTcpSocket socket;
    socket.setSocketDescriptor(descriptor);

    socket.waitForReadyRead();

    // Preparing the answer
    if(socket.isReadable())
    {
        Rest rest(new Header(socket.readAll()));

        // Answer
        socket.write(rest.answer());
        socket.flush();
    }

    // Closing the connection
    socket.close();
}

