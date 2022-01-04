FROM golang:alpine AS builder

WORKDIR /app

COPY codeeducation.go .

RUN go mod init app

RUN go get -d -v

RUN go build -o /app/codeeducation

FROM scratch

COPY --from=builder /app /app

ENTRYPOINT [ "/app/codeeducation" ]
