FROM openjdk:8-jdk-alpine
RUN apk add --no-cache curl nfs-utils tzdata
RUN mkdir -p ./app
RUN mkdir -p ./etc/localtime

ARG JAR_FILE=build/libs/xxx-xxx-front-0.0.1-RELEASE.jar
COPY ${JAR_FILE} ./app/xxx-xxx-front-0.0.1-RELEASE.jar

# timezone
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime && echo "Asia/Seoul" > /etc/timezone
ENTRYPOINT ["java", \
"-jar"., \
"./app/xxx-xxx-front-0.0.1-RELEASE.jar"]
