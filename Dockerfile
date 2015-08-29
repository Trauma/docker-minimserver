FROM ubuntu:latest

RUN apt-get -y update && \
	apt-get -y install --no-install-recommends openjdk-7-jre-headless wget && \
 	wget -O /opt/MinimServer-0.8.3d-linux-x64.tar.gz http://minimserver.com/downloads/MinimServer-0.8.3d-linux-x64.tar.gz && \
	cd /opt && \
	tar xf MinimServer-0.8.3d-linux-x64.tar.gz && \
	rm MinimServer-0.8.3d-linux-x64.tar.gz

COPY ./minimserver.config /opt/minimserver/data/minimserver.config

ENTRYPOINT [ "/opt/minimserver/bin/startc" ]
