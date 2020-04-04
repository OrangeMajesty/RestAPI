#include "Download.h"
#include <QNetworkReply>
#include <QEventLoop>
#include <QFile>
#include <QImage>

/**
 * @brief Download::Download
 * @param parent - root object
 */
Download::Download(QObject *parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(parent);
}

/**
 * @brief Download::getData
 * @param url - url to download files
 * @return file contents
 */
QByteArray Download::getData(QUrl url)
{
    QByteArray ret;
    // Validation url
    if(url.isValid())
    {
        // Request creation
        QNetworkRequest request(url);

        // Request Sync Method
        QEventLoop requestWait;

        // We connect a signal of the end of loading to an exit method
        connect(manager, &QNetworkAccessManager::finished, &requestWait, &QEventLoop::quit);

        // We get the answer
        QNetworkReply *reply = manager->get(request);

        // We are waiting for the completion of the request
        requestWait.exec();

        // Handle the error or return the contents of the response
        if(reply->error())
            qDebug() << "Error download" << url;
        else
            ret = reply->readAll();

        delete reply;
    }

    // Empty answer in case of error
    return ret;
}



