# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get -v -t
BINARY_NAME=p2plib-demo
BINARY_UNIX=$(BINARY_NAME)_unix

all: build


build:
	$(GOBUILD) -o $(BINARY_NAME) -v ./...

# test:
#	$(GOTEST) -v ./...

clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
	rm -f $(BINARY_UNIX)

run:
	$(GOBUILD) -o $(BINARY_NAME) -v ./...
	./$(BINARY_NAME)

deps:
	$(GOGET) github.com/ipfs/go-cid
	$(GOGET) github.com/ipfs/go-datastore
	$(GOGET) github.com/ipfs/go-ipfs-addr
	$(GOGET) github.com/libp2p/go-floodsub
	$(GOGET) github.com/libp2p/go-libp2p
	$(GOGET) github.com/libp2p/go-libp2p-kad-dht
	$(GOGET) github.com/libp2p/go-libp2p-peerstore
	$(GOGET) github.com/multiformats/go-multihash


# Cross compilation
build-linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 $(GOBUILD) -o $(BINARY_UNIX) -v

docker-build:
	docker run --rm -it -v "$(GOPATH)":/go -w /go/src/bitbucket.org/rsohlich/makepost golang:latest go build -o "$(BINARY_UNIX)" -v
