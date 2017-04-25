FROM golang:1.6.3-onbuild

FROM alpine:latest

RUN mkdir -p /go/bin
WORKDIR /go/bin

COPY --from=0 /go/bin/app .

CMD ["./app"]
