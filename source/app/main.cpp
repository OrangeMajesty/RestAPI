#include <QCoreApplication>
#include "Server.h"
#include <signal.h>
#include <unistd.h>
#include <vector>

Server* serv;

void handleGracefulShutdown(const std::vector<int>& quitSignals)
{
    auto handler = [](int) ->void
    {
        if(serv != nullptr)
        {
            serv->shutdown();
            QCoreApplication::quit();
        }
    };

    for (int sig : quitSignals)
        signal(sig, handler);
}

int main(int argc, char** argv) {
    QCoreApplication* r = new QCoreApplication(argc, argv);
    serv = new Server();

    handleGracefulShutdown({SIGINT, SIGTERM});

    r->exec();
}
