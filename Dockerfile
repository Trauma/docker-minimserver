FROM java:8-jre

ENV url=http://jminim.com/cada/MinimServer-0.8.4-linux-x64.tar.gz

RUN wget -O /opt/MinimServer.tar.gz ${url} && \
		cd /opt && \
		tar xf MinimServer.tar.gz && \
		rm MinimServer.tar.gz

COPY ./minimserver.config /opt/minimserver/data/minimserver.config

ENTRYPOINT [ "/opt/minimserver/bin/startc" ]
