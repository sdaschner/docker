FROM jboss/wildfly:13.0.0.Final
LABEL maintainer="Sebastian Daschner"

ENV INSTALL_DIR=/opt/jboss/wildfly \
    CONFIG_DIR=/opt/jboss/wildfly/standalone/configuration \
    DEPLOYMENT_DIR=/opt/jboss/wildfly/standalone/deployments

COPY standalone.xml $CONFIG_DIR
