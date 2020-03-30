#include <QCoreApplication>
#include "server.h"

int main(int argc, char** argv) {
    QCoreApplication* r = new QCoreApplication(argc, argv);
    Server* serv = new Server();
    r->exec();
}
