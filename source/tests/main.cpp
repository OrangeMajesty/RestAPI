#define BOOST_TEST_MODULE UnitAndIntegrationTestSuite
#include <boost/test/included/unit_test.hpp>

#include <QDebug>
#include <iostream>

/********************************
 ***********  Header ************
 ********************************/
#include <Headers.h>

BOOST_AUTO_TEST_CASE(Header_parsingPOSTRequest) {
    Header header("POST /rest/ HTTP/1.1\r\nContent-Type: multipart/form-data; boundary=--------------------------00\r\nContent-Length: 135\r\n\r\n----------------------------00\r\nContent-Disposition: form-data; name=\"\"; filename=\"images.png\"\r\nContent-Type: image/png\r\n\r\nBMB\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\x00\x00\x00\x00\x00\r\n----------------------------00--\r\n");

    BOOST_TEST(Header::header_type::_post == header.getType());

    QString _path = "/rest/";
    BOOST_TEST(header.getPath() == _path);

    QByteArray data = QByteArray::fromRawData("BMB\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\x00\x00\x00\x00\x00", 19);

    QList<QByteArray> dataList = {"BMB\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\x00\x00\x00\x00\x00"};

    BOOST_TEST(header.getFileData() == dataList);
}

BOOST_AUTO_TEST_CASE(Header_parsingPOSTRequestJSON) {
    Header header("POST /rest/ HTTP/1.1\r\nContent-Type: application/json\r\nContent-Length: nouse\r\n\r\n[\"Qk1CAAAAAAAAAD4AAAAoAAAAAQAAAAEAAAABAAEAAAAAAAQAAADEDgAAxA4AAAAAAAAAAAAAAAAAAP///wAAAAAA\"]");

    BOOST_TEST(Header::header_type::_post == header.getType());

    QString _path = "/rest/";
    BOOST_TEST(header.getPath() == _path);

    QByteArray data = QByteArray::fromRawData("BMB\x00\x00\x00\x00\x00\x00\x00>\x00\x00\x00(\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x04\x00\x00\x00\xC4\x0E\x00\x00\xC4\x0E\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\x00\x00\x00\x00\x00", 66);

    QList<QByteArray> dataList = {data};

    BOOST_TEST(header.getFileData() == dataList);
}

BOOST_AUTO_TEST_CASE(Header_parsingGETRequest) {
    Header header("GET /rest HTTP/1.1\r\n");

    BOOST_TEST(Header::header_type::_get == header.getType());

    QString _path = "/rest";
    BOOST_TEST(header.getPath() == _path);
}

/********************************
 ************ Image *************
 ********************************/
#include <Image.h>
#include <QDir>

BOOST_AUTO_TEST_CASE(Image_createOriginalThumbnailAndRemove)
{
    // Contents of a 1x1px BMP file
    QByteArray data = QByteArray::fromRawData("BMB\x00\x00\x00\x00\x00\x00\x00>\x00\x00\x00(\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x04\x00\x00\x00\xC4\x0E\x00\x00\xC4\x0E\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xFF\xFF\xFF\x00\x00\x00\x00\x00", 66);

    Image h(data);

    QString localDir = QDir::currentPath() + "/" + h.pathToImages + "/";

    BOOST_TEST(QFile::exists(localDir + "/" + h.getName()));
    BOOST_TEST(QFile::exists(localDir + "/preview_" + h.getName()));
    BOOST_TEST(QFile::exists(QDir::currentPath() + "/" + h.getPathPreview()));

    h.remove();

    BOOST_TEST(QFile::exists(localDir + "/" + h.getName()) == false);
    BOOST_TEST(QFile::exists(localDir + "/preview_" + h.getName()) == false);
}

/********************************
 ************* Rest *************
 ********************************/
#include <Rest.h>

BOOST_AUTO_TEST_CASE(Rest_checkIsRestAndAnswer) {
    Header header("GET /rest HTTP/1.1\r\n");

    Rest rest(&header);

    BOOST_TEST(rest.isRest() == true);

    BOOST_TEST(rest.answer().indexOf("\"status\":\"ok\"") != -1);
}

BOOST_AUTO_TEST_CASE(Rest_alternativeAnswer) {
    Header header("GET /other/path HTTP/1.1\r\n");

    Rest rest(&header);

    BOOST_TEST(rest.isRest() == false);

    BOOST_TEST(rest.answer().indexOf("\"status\":\"error\"") != -1);
}
