# syntax=docker/dockerfile:1

##
## Build
##

FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
#COPY go.sum ./

RUN go mod tidy

COPY *.go ./

RUN go build -o /docker-auth-service


##
## Deploy
##
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /docker-auth-service /docker-auth-service

EXPOSE 8080

USER nonroot:nonroot

CMD ["/docker-auth-service"]