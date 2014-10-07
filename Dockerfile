FROM resin/rpi-buildstep-armv6hf:latest

# Install Python.
RUN apt-get update
RUN apt-get install -y python python-dev python-pip

ADD . /app

RUN pip install pprintpp pywapi

EXPOSE 8080

RUN echo “udevd —daemon” > /start
RUN echo  "modprobe spi-bcm2708" >> /start
RUN echo  "modprobe fbtft_device name=pitft verbose=0 rotate=90" >> /start
RUN echo python app/hello.py >> /start
RUN chmod +x /start

