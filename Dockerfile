FROM garthk/qt-build:bionic-5.12.0

#ADD ./source /app/src
#WORKDIR /app/src

RUN apt update && apt -y --ignore-missing install freeglut3-dev libfontconfig1 libsm6 libfreetype6 libglib2.0-0; exit 0

#RUN qmake RestAPI.pro "CONFIG+=debug" "CONFIG+=qml_debug" && make

#ENTRYPOINT ["./app/app"]  

#qmake RestAPI.pro -spec linux-g++ "CONFIG+=debug" "CONFIG+=qml_debug" && make qmake_all
#qmake app.pro -spec linux-g++ "CONFIG+=debug" "CONFIG+=qml_debug" && make qmake_all

#docker run -i -p 80:80 -t restapiapp:v3