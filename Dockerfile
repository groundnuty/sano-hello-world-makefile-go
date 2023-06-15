FROM golang:1.18-alpine

WORKDIR /app


COPY *.go ./
RUN go mod init main

RUN go build -o /hello-world

CMD ["/hello-world"]
