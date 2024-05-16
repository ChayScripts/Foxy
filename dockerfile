FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    wget \
    bzip2 \
    libgtk-3-0 \
    libx11-xcb1 \
    libasound2-dev \
    libasound2t64

RUN wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
RUN tar -xjf firefox.tar.bz2 -C /opt/
RUN ln -s /opt/firefox/firefox /usr/bin/firefox
ENV LD_LIBRARY_PATH="/opt/firefox"
CMD ["firefox"]
