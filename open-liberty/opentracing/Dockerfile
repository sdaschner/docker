FROM sdaschner/open-liberty:javaee8-jdk11-b5

# from https://github.com/WASdev/sample.opentracing.zipkintracer
COPY liberty-opentracing-zipkintracer-1.0-sample.zip /
RUN unzip liberty-opentracing-zipkintracer-1.0-sample.zip -d $INSTALL_DIR/usr/

RUN wget https://github.com/WASdev/sample.opentracing.zipkintracer/releases/download/1.2/liberty-opentracing-zipkintracer-1.2-sample.zip \
 && unzip liberty-opentracing-zipkintracer-1.2-sample.zip -d $INSTALL_DIR/usr/ \
 && rm liberty-opentracing-zipkintracer-1.2-sample.zip

COPY server.xml $CONFIG_DIR
