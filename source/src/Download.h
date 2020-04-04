#ifndef DOWNLOAD_H
#define DOWNLOAD_H

#include <QObject>
#include <QNetworkAccessManager>

/**
 * @brief The Download class.
 *      Loads files.
 */
class Download : public QObject
{
    Q_OBJECT
public:

    /// Manager sets up
    explicit Download(QObject *parent = nullptr);

    /// Loads a file by reference and returns the contents
    QByteArray getData(QUrl);

private:

    /// Request Manager
    QNetworkAccessManager* manager;
};

#endif // DOWNLOAD_H
