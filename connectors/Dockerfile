FROM ubuntu:latest

RUN apt-get update
RUN apt-get install curl -y

COPY connectors/config/ /hooks/config/
COPY connectors/*.sh /hooks/
COPY wait-for-it.sh /hooks

WORKDIR /hooks

ENTRYPOINT [ "./wait-for-it.sh", "-t", "0", "kafkaconnect:8083", "--", "./init-connect.sh" ]
