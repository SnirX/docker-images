FROM alpine:3.7

ARG KUBE_VERSION="v1.8.6"

RUN apk update && apk add curl

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /bin/kubectl && chmod +x /bin/kubectl && mkdir ~/.kube

CMD kubectl