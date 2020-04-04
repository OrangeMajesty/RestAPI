# RestAPI

QT project implementing the standard RestAPI architecture.


## Run

    docker compose

## Request

To send ** GET ** ** POST ** request, use the address host: 80 / rest

* ### Raw JSON
		 ["link", "link", "base64", ...]

* ### from-data

## Application Response
In response to the request, you can get the status and path to the thumbnail

    {"preview": "images / preview_filename.jpeg", "..."], "status": "ok"}

or

    {"status": "error", "message": "description error"}

## Notes
- The application does not create a thumbnail GIF

---

[![Build status](https://ci.appveyor.com/api/projects/status/tk601prhccaah75j/branch/master?svg=true)](https://ci.appveyor.com/project/OrangeMajesty/restapi/branch/master)

