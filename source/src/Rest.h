#ifndef REST_H
#define REST_H

#include <QObject>
#include "Headers.h"
#include "Download.h"

/**
 * @brief The Rest class.
 *      A simple Rest request handler.
 */
class Rest : public QObject
{
    Q_OBJECT
public:

    /// Checks the validity of the request
    explicit Rest(Header *, QObject *parent = nullptr);

    /// Returns a response to a request
    QByteArray answer();

    /// Returns the correctness of the request
    bool isRest() const;

private:

    /// Keeper and request header handler
    Header* header;

    /// Keeps request correct
    bool rest;
};

#endif // REST_H
