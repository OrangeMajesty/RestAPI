FROM orangemajesty/restapi

ADD ./source /app/
WORKDIR /app/

#RUN apt update && apt -y --ignore-missing install freeglut3-dev libfontconfig1 libsm6 libfreetype6 libglib2.0-0; exit 0

RUN qmake RestAPI.pro "CONFIG+=debug" "CONFIG+=qml_debug" && make

ENTRYPOINT ["./app/app"]  