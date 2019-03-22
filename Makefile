GOBUILD=env GOOS=linux go build -ldflags="-s -w" -o

go-build: 
	@echo "  >  Building binary..."
	dep ensure -v
	$(GOBUILD) bin/ping go/ping.go

go-clean:
	@echo "  >  Cleaning build cache..."
	rm -rf ./bin ./vendor Gopkg.lock
	
go-deploy: 
	@echo "  >  Deploy Serverless..."
	@-$(MAKE) go-clean go-build
	SLS_DEBUG=* sls deploy -v

