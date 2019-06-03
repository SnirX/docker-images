FROM docker:dind

RUN apk add --no-cache curl tar bash procps npm git python2 py-pip


RUN pip install docker-compose && npm install -g typescript

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
