FROM sdaschner/wildfly:javaee8-b1

RUN mkdir -p $INSTALL_DIR/modules/org/apache/kafka/clients/main/
COPY modules/kafka/* $INSTALL_DIR/modules/org/apache/kafka/clients/main/

COPY standalone.xml $CONFIG_DIR
