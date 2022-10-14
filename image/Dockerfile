FROM ubuntu:20.04

RUN dpkg --add-architecture i386 \
	&& apt-get update \
	&& apt-get install wget gnupg2 software-properties-common -y
RUN apt-get install wine32 -y
RUN echo -e 'export WINEPREFIX=~/.wine\nexport WINEDEBUG=fixme-all\nexport WINEARCH=win64' >> ~/.bashrc

RUN adduser --disabled-password --gecos '' cod

RUN wine winecfg
USER cod
WORKDIR /home/cod

EXPOSE 27016 27016/udp

RUN wget https://github.com/mxve/plutonium-updater.rs/releases/latest/download/plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
RUN tar xfv plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
RUN rm plutonium-updater-x86_64-unknown-linux-gnu.tar.gz
RUN chmod +x plutonium-updater
RUN ./plutonium-updater -d "./pluto"

CMD ["/bin/sh", "-e", "init.sh"]
