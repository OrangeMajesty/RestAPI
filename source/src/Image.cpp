#include "Image.h"

#include <QDateTime>
#include <QDir>
#include <QImage>
#include <QMimeDatabase>
#include <QDebug>

/**
 * @brief Image::Image
 * @param arr - Image content
 * @param parent - root object
 *
 * @bug gif imag not scaled
 */
Image::Image(QByteArray arr, QObject *parent) : QObject(parent)
{
    // We compose the path to the file directory
    QString localPathDir = QDir::currentPath() + "/" +  pathToImages + "/";

    QDir createfolder(localPathDir);

    // Checking the existence of a path
    if(!createfolder.exists())
        createfolder.mkpath(localPathDir);

    // Get the file extension
    type = QMimeDatabase().mimeTypeForData(arr);

    // We make a file name
    name = "file_"
            + QDate::currentDate().toString("ddMMyyyy").toUtf8()
            + QTime::currentTime().toString("hhmmsszzz")
            + QString::number(qrand())
            + "."
            + type.preferredSuffix();

    // Preparing the original file
    QFile original(localPathDir + name);

    // Open to record
    if(!original.open(QIODevice::WriteOnly))
       qDebug() << "Error white" << original.errorString();

    // We write and close
    original.write(arr);
    original.close();

    // Preparing thumbnail
    QFile thumbnail(localPathDir + "preview_" + name);

    // Open for recording and record the path if successful
    if(!thumbnail.open(QIODevice::WriteOnly))
        qDebug() << "Error white" << thumbnail.errorString();
    else
        pathThumbnail = pathToImages + "/" +  "preview_" + name;

    // Reduce and write
    QImage::fromData(arr).scaled(QSize(100, 100)).save(&thumbnail);

    // Close
    thumbnail.close();
}

/**
 * @brief Image::getPathPreview
 * @return The path to the small copy
 */
QString Image::getPathPreview() const
{
    return pathThumbnail;
}

/**
 * @brief Image::getName
 * @return File name
 */
QString Image::getName() const
{
    return name;
}

/**
 * @brief Image::remove
 */
void Image::remove()
{
    // We compose the path to the file directory
    QString localPathDir = QDir::currentPath() + "/" +  pathToImages + "/";

    if(QFile::exists(localPathDir + "/" + getName()))
        QFile::remove(localPathDir + "/" + getName());

    if(QFile::exists(localPathDir + "/preview_" + getName()))
        QFile::remove(localPathDir + "/preview_" + getName());

}
