
all:
	buf generate

.PHONY: lint
lint:
	buf lint

.PHONY: install
install:
	go get github.com/golang/protobuf/protoc-gen-go@v1.5.2 
	go get google.golang.org/grpc/cmd/protoc-gen-go-grpc
	go get github.com/bufbuild/buf/cmd/buf@v0.43.2
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-breaking@v0.43.2
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-check-breaking@v0.43.2
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-check-lint@v0.43.2
	go get github.com/bufbuild/buf/cmd/protoc-gen-buf-lint@v0.43.2
	go mod tidy