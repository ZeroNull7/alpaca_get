FROM alpine:3.14

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /alpaca_get

CMD [ "/alpaca_get" ]
