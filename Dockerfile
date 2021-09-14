FROM alpine:3.14

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /fetch

CMD [ "/fetch" ]