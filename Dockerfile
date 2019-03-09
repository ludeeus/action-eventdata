FROM alpine:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apk add jq

ENTRYPOINT ["/entrypoint.sh"]

LABEL "name"="eventdata"
LABEL "maintainer"="Ludeeus <ludeeus@gmail.com>"
LABEL "version"="0.0.1"
LABEL "com.github.actions.name"="eventdata"
LABEL "com.github.actions.description"="Display the content of the event that triggered the run"
LABEL "com.github.actions.icon"="info"
LABEL "com.github.actions.color"="black"
