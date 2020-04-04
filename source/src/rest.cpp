#include "Image.h"
#include "Rest.h"

#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>

/**
 * @brief Rest::Rest
 * @param header - Handles HTTP headers
 * @param parent - Root object
 */
Rest::Rest(Header *header, QObject *parent) :
    QObject(parent),
    header(header)
{
    // Path separation
    QList<QString> path = header->getPath().split('/');

    // Check endpoint
    if(path.length() > 1 && path.at(1).toUtf8() == "rest")
        rest = true;
    else
        rest = false;
}

/**
 * @brief Rest::answer
 * @return answer
 */
QByteArray Rest::answer()
{
    // Preparing an answer
    QByteArray ret;

    // Stores json objects
    QJsonObject _body;

    qsrand(0);

    ret.append("HTTP/1.0 200 Ok\r\n");

    // Endpoint verification
    if(!isRest()) {
        _body.insert("status", "error");
        _body.insert("message",
                     "The request failed."
                     "The path is different from / rest");
    }
    else
    {
        // Index for array values
        unsigned int index = 0;

        // Array of thumbnail paths
        QJsonArray _images;

        // Receive Transferred Files
        auto q = header->getFileData();

        // Preparing an answer
        for(auto item : q)
        {
            // Create thumbnail
            Image image(item);

            // Get the path to thumbnail
            QJsonValue _image(image.getPathPreview());

            // Add path to array
            _images.insert(index++, _image);
        }

        _body.insert("status", "ok");

        // Add an array of thumbnail to an array of json objects
        _body.insert("preview", _images);

    }

    // Add content type
    ret.append("Content-Type: text/html; charset=\"utf-8\"\r\n\r\n");

    // Add json objects to the response body
    ret.append(QJsonDocument(_body).toJson(QJsonDocument::Compact));

    return ret;
}

/**
 * @brief Rest::isRest
 * @return The correctness of the request
 */
bool Rest::isRest() const
{
    return rest;
}
