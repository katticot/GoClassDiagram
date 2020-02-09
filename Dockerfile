FROM golang:alpine as builder
RUN apk add git
RUN go get github.com/jfeliu007/goplantuml/parser && go get github.com/jfeliu007/goplantuml/cmd/goplantuml
RUN cd $GOPATH/src/github.com/jfeliu007/goplantuml && go install ./...