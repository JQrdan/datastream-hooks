FROM ibmjava:8-jre

COPY libs /hooks/libs/
COPY bin /hooks/bin/
COPY config /hooks/config/
COPY *.sh /hooks/

WORKDIR /hooks

ENTRYPOINT [ "./wait-for-it.sh", "-t", "0", "kafkarest:8082", "--", "./init-topics.sh" ]


