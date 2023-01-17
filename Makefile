init: ## Initialize system
	brew install mit-scheme

deps: ## Install dependencies
	@./scripts/deps.sh

build: deps ## Build locally
	docker build -t mse .

run: build ## Run locally
	docker run -it --rm -p 8080:8080 mse

test: ## Run tests
	@./scripts/test.sh

help: ## Show help
	awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s \n", $$1, $$2}' $(MAKEFILE_LIST)