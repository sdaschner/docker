FROM adoptopenjdk/openjdk12-openj9:jdk-12.0.1_12_openj9-0.14.1-alpine-slim
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2019-06-02_1900
ENV VERSION 19.0.0.6-cl190620190602-1900

RUN apk add curl

RUN curl https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip -L -o openliberty.zip \
    && unzip openliberty.zip -d /opt \
    && rm openliberty.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml ${CONFIG_DIR}configDropins/defaults/

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
