GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
BINARY_NAME=$(GOPATH)/bin/logs-vacuum
BINARY_UNIX=$(BINARY_NAME)_unix

build: 
	@echo "Building logs-vaucum"
	$(GOBUILD) -o $(BINARY_NAME) -v
test:
	@echo "Running logs-vacuum tests"
	$(GOTEST) -v ./...
clean: 
	@echo "Cleaning call-it"
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
	rm -f $(BINARY_UNIX)
run:
	@echo "Running logs-vacuum with params: $(filter-out $@,$(MAKECMDGOALS))"
	$(GOBUILD) -o $(BINARY_NAME)
	./$(BINARY_NAME) $(filter-out $@,$(MAKECMDGOALS)) 
