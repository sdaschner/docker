FROM adoptopenjdk/openjdk11-openj9:jdk-11.0.1.13-alpine-slim
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2018-11-23_2217
ENV VERSION 18.0.0.4-20181123-2100

RUN curl https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip -L -o openliberty.zip \
    && unzip openliberty.zip -d /opt \
    && rm openliberty.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml ${CONFIG_DIR}configDropins/defaults/

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
