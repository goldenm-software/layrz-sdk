CHMOD_CMD = chmod +x .githooks/pre-commit
ifeq ($(OS),Windows_NT)
    CHMOD_CMD = echo "Skipping chmod on Windows"
endif

.PHONY: install-hooks
install-hooks:
	@echo "Installing git hooks from .githooks directory..."
	@$(CHMOD_CMD)
	@git config core.hooksPath .githooks

.PHONY: checks
checks:
	$(MAKE) -C python checks
	$(MAKE) -C go checks

.PHONY: prepare
prepare:
	$(MAKE) -C go tidy

.PHONY: tests
tests:
	$(MAKE) -C python tests
	$(MAKE) -C go tests
