FROM adoptopenjdk/openjdk13-openj9:jdk-13.0.2_8_openj9-0.18.0-alpine-slim
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2020-02-16_0300
ENV VERSION 20.0.0.3-cl200320200216-0300

RUN apk add curl

RUN curl https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip -L -o openliberty.zip \
    && unzip openliberty.zip -d /opt \
    && rm openliberty.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml ${CONFIG_DIR}configDropins/defaults/

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
