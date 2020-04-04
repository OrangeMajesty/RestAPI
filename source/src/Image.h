#ifndef IMAGE_H
#define IMAGE_H

#include <QMimeType>
#include <QObject>

/**
 * @brief The Image class.
 *      Saves files and makes copies 100x100px.
 *
 * @bug Copies are not created for gif files.
 */
class Image : public QObject
{
    Q_OBJECT
public:

    /// Saves the original and thumbnail to disk
    explicit Image(QByteArray, QObject *parent = nullptr);

    /// Returns the path to the small copy
    QString getPathPreview() const;

    /// Returns file name
    QString getName() const;

    /// File delete
    void remove();

    /// Stores a constant value up to the directory for images
    const QString pathToImages = "images";

private:

    /// Stores file name
    QString name;

    /// Stores the path to a thumbnail image
    QString pathThumbnail;

    /// Stores file type
    QMimeType type;
};

#endif // IMAGE_H
