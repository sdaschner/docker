FROM adoptopenjdk/openjdk12-openj9:jdk-12.0.1_12_openj9-0.14.1-alpine-slim
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2019-06-23_0300
ENV VERSION 19.0.0.7-cl190720190623-0300

RUN apk add curl

RUN curl https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip -L -o openliberty.zip \
    && unzip openliberty.zip -d /opt \
    && rm openliberty.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml ${CONFIG_DIR}configDropins/defaults/

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
