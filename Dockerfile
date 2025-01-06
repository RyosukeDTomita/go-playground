FROM golang:1.23.4-bookworm AS devcontainer
WORKDIR /app
USER root
ENV PATH=$HOME/go/bin:$PATH

RUN <<EOF bash -ex
go install golang.org/x/tools/cmd/goimports@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
EOF

# dependency library
COPY go.* .
RUN --mount=type=cache,target=/go/pkg/mod go mod download

COPY . .
RUN --mount=type=cache,target=/root/.cache/go-build \
make


FROM gcr.io/distroless/static-debian12:latest AS run
WORKDIR /app
COPY --chown=nonroot:nonroot --from=devcontainer /app/bin/* /app/
USER nonroot
ENTRYPOINT ["/app/go-playground"]
