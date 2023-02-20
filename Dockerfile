# syntax=docker/dockerfile:1

FROM golang:1.19-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

#COPY *.go ./
COPY cmd/money-lineage/money-lineage.go ./
RUN go build money-lineage.go

#RUN go build -o /money-lineage/cmd/money-lineage

EXPOSE 8080

CMD [ "./money-lineage" ]