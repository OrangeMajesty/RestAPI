#include "Headers.h"
#include <QJsonDocument>

/**
 * @brief Header::Header
 * @param arr - Raw request
 * @param parent - root object
 */
Header::Header(QByteArray arr, QObject *parent) : QObject(parent)
{
    donwload = new Download(parent);

    // Request parsing
    parsing(arr);

//    qDebug() << arr;
}

/**
 * @brief Header::parsing
 * @param arr - Raw request
 */
void Header::parsing(QByteArray arr)
{

    // Break data
    auto list = arr.split('\n');

    // Stores processed data
    QByteArray data;

    // Проверяем что данные есть
    if(list.length() > 1)
    {
        // We clear the data after the delimiter
        auto param = list.first().split(' ');

        // Determine the type of request
        if (param.at(0).indexOf("GET")    == 0) type = header_type::_get;
        if (param.at(0).indexOf("POST")   == 0) type = header_type::_post;
        if (param.at(0).indexOf("PUT")    == 0) type = header_type::_put;
        if (param.at(0).indexOf("DELETE") == 0) type = header_type::_delete;

        // Set the request path
        path = param.at(1);

        // We remove the processed data
        list.pop_front();
    }

    for(auto item: list)
    {
        auto itemSplit = item.split(':');
        if(itemSplit.first().length() != 0)
        {
            // Write data
            headerData.insert(
                itemSplit.at(0),
                (itemSplit.length() > 1 && itemSplit.at(1).length() != 0) ? itemSplit.at(1) : ""
            );
        }

        // Determine the type of content
        if(headerData.value("Content-Type").indexOf("multipart/form-data;") >= 0 &&
           item.indexOf("boundary=") == -1 &&
           item.indexOf("--") >= 0)
        {
            // We pass further
            myltipartFormData(arr.remove(0,arr.indexOf(item) + item.length()));
            break;
        }

        // Determine the type of content
        if(headerData.value("Content-Type").indexOf("application/json") >= 0 &&
           item.indexOf("Content-Length") >= 0)
        {
            // We pass further
            json(arr.remove(0,arr.indexOf(item) + item.length()));
            break;
        }
    }
//    qDebug() << fileData;

}

/**
 * @brief Header::getType
 * @return Header type
 */
Header::header_type Header::getType() const
{
    return type;
}

/**
 * @brief Header::getPath
 * @return Request path
 */
QString Header::getPath() const
{
    return path;
}

/**
 * @brief Header::json
 * @param data - Request Part
 */
void Header::json(QByteArray data)
{
    // We shift with the necessary data
    int offset = 0;
    while(data.at(offset) == '\n' || data.at(offset) == '\r')
    {
        if(data.length()-1 <= offset) break;
        offset++;
    }
    if(data.length()-1 > offset) data = data.remove(0, offset);

    // Accept json data
    QJsonDocument js = QJsonDocument::fromJson(data);
    auto fileList = js.toVariant().toList();

    for(auto file : fileList)
    {
        auto byteArray = QByteArray::fromBase64(file.value<QByteArray>());
        auto fileUrl = QUrl(QString(file.value<QByteArray>()).toUtf8());


        // bug: QUrl::isValid always true, used manual check.
        if(!fileUrl.scheme().isEmpty()  &&
           !fileUrl.host().isEmpty()    &&
           !fileUrl.path().isEmpty()    &&
           !fileUrl.fileName().isEmpty())
        {
            auto result = donwload->getData(fileUrl);
            if(!result.isEmpty())
                fileData.append(result);

        } else
        {
            fileData.append(byteArray);
        }
    }

}

/**
 * @brief Header::myltipartFormData
 * @param data - Request Part
 */
void Header::myltipartFormData(QByteArray data)
{
    // Break the delimiter
    if(!data.split('\n').empty())
    {
        for(auto item: data.split('\n'))
        {
            if(item.length() == 0) continue;

            // Start of file data
            if(item.indexOf("Content-Type:") >= 0 && item.indexOf("image/") >= 0)
            {
                int offset = 0;
                data = data.remove(0, data.indexOf(item) + item.length());

                while(data.at(offset) == '\n' || data.at(offset) == '\r')
                {
                    if(data.length()-1 <= offset) break;
                    offset++;
                }

                if(data.length()-1 > offset)
                    data = data.remove(0, offset);
                else
                    break;

                continue;
            }

            // End of file data
            if(item.indexOf("------") == 0)
            {
                int offset = data.indexOf("------");

                while(data.at(offset) == '\n'  || data.at(offset) == '\r' || data.at(offset) == '-') offset--;

                auto dataWrite = data.left(offset+1);

                // Add to the data array
                if(dataWrite.length() != 0)
                    fileData.append(dataWrite);
            }
        }

        // If at the end of the request there is no boundary
        if(data.length() != 0)
            if(data.indexOf("------") == -1)
            {
                fileData.append(data);
            }
    }

}

/**
 * @brief Header::getFileData
 * @return Array of received data
 */
QList<QByteArray> Header::getFileData() const
{
    return fileData;
}
