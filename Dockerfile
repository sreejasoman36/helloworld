FROM golang:1.16-alpine3.13

RUN mkdir /helloworld

WORKDIR /helloword

ADD go.* *.go ./

RUN go mod download

RUN go build main.go

EXPOSE 3000

CMD [ "./main" ]



