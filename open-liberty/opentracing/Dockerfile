FROM sdaschner/open-liberty:javaee8-jdk8-b4

# from https://github.com/WASdev/sample.opentracing.zipkintracer
COPY liberty-opentracing-zipkintracer-1.0-sample.zip /
RUN unzip liberty-opentracing-zipkintracer-1.0-sample.zip -d $INSTALL_DIR/usr/

COPY server.xml $CONFIG_DIR
