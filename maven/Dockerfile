FROM adoptopenjdk/openjdk14-openj9:x86_64-alpine-jre-14_36.1_openj9-0.19.0

ARG MAVEN_VERSION="3.5.4"

RUN apk add curl

RUN mkdir -p /usr/share/maven \
 && curl -Lso /tmp/maven.tar.gz https://apache.osuosl.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
 && tar -xzC /usr/share/maven --strip-components=1 -f /tmp/maven.tar.gz \
 && rm -v /tmp/maven.tar.gz \
 && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN mkdir -p /root/.m2/repository/

ENV M2_HOME /usr/share/maven

COPY .mvn-repository/ /root/.m2/repository/
