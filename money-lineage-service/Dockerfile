# syntax=docker/dockerfile:1

FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

#COPY *.go ./
COPY cmd/money-lineage-service/money-lineage-service.go ./
RUN go build money-lineage-service.go

#RUN go build -o /money-lineage-service/cmd/money-lineage-service

EXPOSE 8080

CMD [ "./money-lineage-service" ]