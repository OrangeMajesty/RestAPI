#ifndef HEADER_H
#define HEADER_H

#include "Download.h"

#include <QFile>
#include <QMap>
#include <QObject>

/**
 * @brief The Header class.
 *      Handles HTTP headers.
 *
 * @warning File transfer only works
 *  with multipart/form-data and application/json requests
 *
 */
class Header : public QObject
{
    Q_OBJECT
public:

    /// Configures Download and sends QByteArray to the parser
    explicit Header(QByteArray, QObject *parent = nullptr);

    /// Parses the header
    void parsing(QByteArray);

    /// Types of Queries
    enum header_type {
        _get,
        _post,
        _put,
        _delete,
    };

    /// Returns request type
    header_type getType() const;

    /// Returns request path
    QString getPath() const;

    /// Handles applicationJson header content
    void json(QByteArray);

    /// Handles myltipartFormData header content
    void myltipartFormData(QByteArray);

    /// Returns the contents of the transferred files
    QList<QByteArray> getFileData() const;

private:

    /// Files loader
    Download* donwload;

    /// Stores the contents of the transferred files
    QList<QByteArray> fileData;

    /// Stores header data
    QMap<QString, QString> headerData;

    /// Stores request type
    header_type type;

    /// Stores the request path
    QString path;
};

#endif // HEADER_H
