FROM sdaschner/open-liberty:javaee8-jdk12-b2

RUN wget https://github.com/WASdev/sample.opentracing.zipkintracer/releases/download/1.3/liberty-opentracing-zipkintracer-1.3-sample.zip \
 && unzip liberty-opentracing-zipkintracer-1.3-sample.zip -d $INSTALL_DIR/usr/ \
 && rm liberty-opentracing-zipkintracer-1.3-sample.zip

COPY server.xml $CONFIG_DIR
