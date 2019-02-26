FROM alpine:3.7

ARG KUBE_VERSION="v1.8.6"

RUN apk update && apk add git py-pip curl build-base python-dev libffi-dev openssl-dev

RUN pip install kubernetes SlackClient Click jinja2

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /bin/kubectl && chmod +x /bin/kubectl && mkdir ~/.kube

CMD kubectl
