FROM alpine:edge

ARG VERSION=0
# hadolint ignore=DL3018
RUN echo 'https://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
	apk update && \
	apk add --no-cache  bash bash-completion difftastic && \
	rm -rf /var/cache/apk/* && \
	mkdir -p /etc/bash_completion.d/

WORKDIR /difft

VOLUME ["/difft"]

ENTRYPOINT ["difft"]
