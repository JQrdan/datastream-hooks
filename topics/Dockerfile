FROM ibmjava:8-jre

COPY topics/libs /hooks/libs/
COPY topics/bin /hooks/bin/
COPY topics/config/tools* /hooks/config/
COPY topics/*.sh /hooks/
COPY wait-for-it.sh /hooks

WORKDIR /hooks

ENTRYPOINT [ "./wait-for-it.sh", "-t", "0", "kafkarest:8082", "--", "./init-topics.sh" ]
