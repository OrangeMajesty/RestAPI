FROM orangemajesty/restapi

ADD ./source app
WORKDIR app

#RUN apt update && apt -y install freeglut3-dev libfontconfig1 libsm6 libfreetype6 libglib2.0-0; exit 0

RUN /opt/qt514/bin/qmake RestAPI.pro "CONFIG+=debug" "CONFIG+=qml_debug" && make -j4

# unit testing
RUN ./tests/tests

ENTRYPOINT ["./app/app"]  