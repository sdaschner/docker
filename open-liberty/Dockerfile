FROM java:8u111-jdk
LABEL maintainer="Sebastian Daschner"

ENV RELEASE 2018-09-11_0430
ENV VERSION 18.0.0.3-20180911-0300

RUN wget https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/nightly/${RELEASE}/openliberty-all-${VERSION}.zip \
    && unzip openliberty-all-${VERSION}.zip -d /opt \
    && rm openliberty-all-${VERSION}.zip

ENV INSTALL_DIR /opt/wlp/
ENV CONFIG_DIR /opt/wlp/usr/servers/defaultServer/
ENV DEPLOYMENT_DIR /opt/wlp/usr/servers/defaultServer/dropins/

COPY server.xml $CONFIG_DIR

CMD ["/opt/wlp/bin/server", "run", "defaultServer"]
