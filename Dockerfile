FROM resin/rpi-buildstep-armv6hf:latest

# Install Python.
RUN apt-get update
RUN apt-get install -y python python-dev python-pip

ADD . /app

RUN pip install pprint pywapi

EXPOSE 8080

RUN modprobe spi-bcm2708
RUN modprobe fbtft_device name=pitft verbose=0 rotate=90

RUN echo python app/hello.py > /start
RUN chmod +x /start
