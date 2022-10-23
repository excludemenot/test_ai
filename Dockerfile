FROM ubuntu:22.04

RUN apt-get update 
RUN apt-get install maven -y

COPY ./spring-boot-with-metrics /spring-boot
WORKDIR /spring-boot/spring-boot-with-metrics
CMD mvn clean spring-boot:run
