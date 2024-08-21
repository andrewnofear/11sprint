FROM golang:1.22.0

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY * ./

RUN GOOS=linux GOARCH=amd64 go build -o /myapp

CMD ["/myapp"]