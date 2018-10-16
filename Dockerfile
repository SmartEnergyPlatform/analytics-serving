FROM golang

RUN go get -u github.com/golang/dep/cmd/dep

COPY . /go/src/serving-service
WORKDIR /go/src/serving-service

RUN dep ensure
RUN go build

EXPOSE 5001

CMD ./serving-service
