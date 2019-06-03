FROM docker:dind

RUN apk add --no-cache curl tar bash procps npm=10.14.2-r0 git python2 py-pip

RUN apk add --no-cache gcc make python-dev musl-dev libffi-dev openssl-dev

RUN pip install docker-compose && npm install -g typescript

COPY docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
