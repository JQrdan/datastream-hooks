FROM ibmjava:8-jre

COPY libs /hooks/libs/
COPY bin /hooks/bin/
COPY config /hooks/config/
COPY init-topics.sh /hooks

WORKDIR /hooks

ENTRYPOINT [ "./init-topics.sh" ]


