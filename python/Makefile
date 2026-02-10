.PHONY: static-checks
static-checks:
	uv run ruff check

.PHONY: type-checks
type-checks:
	uv run ty check

.PHONY: tests
tests:
	uv run pytest ./tests/ --cov=layrz_sdk --disable-warnings

.PHONY: checks
checks: static-checks type-checks tests
