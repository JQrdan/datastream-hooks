FROM ubuntu:latest

RUN apt-get update
RUN apt-get install curl -y

COPY dashboards/resources/ /hooks/resources/
COPY dashboards/*.sh /hooks/
COPY wait-for-it.sh /hooks

WORKDIR /hooks

ENTRYPOINT [ "./wait-for-it.sh", "-t", "0", "kibana:5601", "--", "./init-dashboards.sh" ]
