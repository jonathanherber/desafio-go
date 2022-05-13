FROM golang:1.17-alpine as builder
WORKDIR /app
COPY . .

FROM scratch
WORKDIR /
COPY --from=builder /app .
ENTRYPOINT ["/main"]
