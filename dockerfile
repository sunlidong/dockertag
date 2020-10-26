FROM golang:1.14

WORKDIR $GOPATH/src/dockertag
COPY . $GOPATH/src/dockertag
RUN go build dog

EXPOSE 10082
ENTRYPOINT ["./dog"]