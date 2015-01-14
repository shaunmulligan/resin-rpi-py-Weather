FROM resin/rpi-raspbian:wheezy-2015-01-15

# Install Python.
RUN apt-get update
RUN apt-get install -y python python-dev python-pip python-pygame libraspberrypi-bin

ADD . /app

RUN pip install pywapi pygame

EXPOSE 8080

RUN echo "udevd --daemon" > /start
RUN echo  "modprobe spi-bcm2708" >> /start
RUN echo  "modprobe fbtft_device name=pitft verbose=0 rotate=270" >> /start
RUN echo python app/hello.py >> /start
RUN chmod +x /start

