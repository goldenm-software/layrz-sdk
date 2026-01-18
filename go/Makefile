.PHONY: run
run:
	go run cmd/main.go

.PHONY: tidy
tidy:
	go mod tidy

.PHONY: format
format:
	golangci-lint-v2 fmt ./...

.PHONY: checks
checks:
	@echo "Running pre-commit checks..."
	@# 1. Checking code formatting
	$(MAKE) format
	@# 2. Running linter
	golangci-lint-v2 run ./...
	@# 3. Running tidy
	@echo "Checking if go.mod is tidy..."
	@cp go.mod go.mod.tmp
	@cp go.sum go.sum.tmp
	@go mod tidy
	@if ! cmp -s go.mod go.mod.tmp || ! cmp -s go.sum go.sum.tmp; then \
		echo "Error: go.mod or go.sum were modified by 'go mod tidy'."; \
		mv go.mod.tmp go.mod; \
		mv go.sum.tmp go.sum; \
		exit 1; \
	fi
	@rm go.mod.tmp go.sum.tmp
	@echo "All pre-commit checks passed."