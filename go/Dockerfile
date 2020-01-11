FROM golang:1.12-alpine

WORKDIR /site

RUN mkdir /site/src
RUN mkdir /site/bin
RUN mkdir /site/pkg
RUN apk update && \
    apk upgrade && \
    apk add git

ENV GOPATH /site
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin

COPY . /site/src

# COPY --from=builder /app/dist /site/src/frontend

RUN /bin/sh /site/src/entry.sh
