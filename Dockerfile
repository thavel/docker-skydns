FROM alpine:3.3

RUN set -ex \
    && export GOPATH=/go \
    && export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH \
    \
    && apk add --update --no-cache --virtual deps git go \
    \
    && go get github.com/skynetservices/skydns \
    && cd $GOPATH/src/github.com/skynetservices/skydns/ \
    && go build -v \
    && cp skydns /usr/local/bin/skydns \
    \
    && apk del deps \
    && rm -rf /usr/local/go/ $GOPATH \
    && rm -rf /var/cache/apk/*

EXPOSE 53
ENTRYPOINT [ "/usr/local/bin/skydns", "-verbose", "-addr", "0.0.0.0:53" ]
