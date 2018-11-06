FROM openjdk:11.0.1-jdk-slim-sid
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2018-11-04_2212
ENV VERSION 18.0.0.4-20181104-2100

RUN apt-get update && apt-get install -y wget

RUN wget https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip \
    && unzip openliberty-all-${VERSION}.zip -d /opt \
    && rm openliberty-all-${VERSION}.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml $CONFIG_DIR

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
