# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Layrz SDK is a multi-language monorepo (Python + Go) providing shared data models, enums, and utilities for the Layrz IoT platform. The Python and Go SDKs maintain entity parity — same structures, naming, and JSON serialization contracts across both languages.

## Build & Test Commands

```bash
# Run ALL checks (both languages) — also runs as pre-commit hook
make checks

# Python only (from repo root)
make -C python checks          # ruff lint + ty type check + pytest

# Go only (from repo root)
make -C go checks              # format + lint + tidy check + tests

# Individual commands
# Python
cd python && uv run ruff check             # lint
cd python && uv run ty check               # type check
cd python && uv run pytest ./tests/ --disable-warnings  # tests
cd python && uv run pytest ./tests/test_lcl.py -k "test_name"  # single test

# Go
cd go && golangci-lint-v2 run ./...        # lint
cd go && golangci-lint-v2 fmt ./...        # format
cd go && go test ./... -v                  # tests
cd go && go test ./entities/ -v -run TestName # single test
cd go && go mod tidy                       # tidy deps
```

Setup: `make install-hooks` to enable pre-commit hooks. Python uses `uv` for package management (`uv sync` to install deps).

## Architecture

### Repository Layout

- `python/` — Python SDK (published to PyPI as `layrz-sdk`)
- `go/` — Go SDK (module `github.com/goldenm-software/layrz-sdk/go/v4`)
- `.github/workflows/` — CI (PR checks) and CD (tag-based PyPI + GitHub release)

### Python SDK (`python/layrz_sdk/`)

- **`entities/`** — 100+ Pydantic BaseModel classes for Layrz platform objects (assets, devices, sensors, geofences, telemetry messages, charts, broadcasts, modbus, operations, reports, etc.). Each entity uses `model_config = ConfigDict(populate_by_name=True)` with `Field(alias=...)` to support both snake_case Python and camelCase JSON.
- **`lcl/`** — Layrz Compute Language interpreter (`LclCore`). A domain-specific expression language for telemetry scripting with operations like `GET_PARAM`, `GET_SENSOR`, `CONSTANT`, `COMPARE`, `MATH`, etc.
- **`helpers/`** — Utilities: UUIDv7 composition/extraction (`uuid.py`), color conversion (`color.py`).
- **`decorators/`** — `func_timing` decorator for async/sync function timing.
- **`constants.py`** — Shared constants (`UTC` timezone, `REJECTED_KEYS`).

### Go SDK (`go/`)

- **`entities/`** — Go struct equivalents of Python entities with JSON struct tags. Tests are co-located as `*_test.go` files.
- **`enums/`** — String-based enum types (asset operation modes, broadcast status, trigger kinds, etc.).
- **`types/`** — Custom marshaling wrappers for Time, Duration, Unix timestamps, UUID. Tests are co-located as `*_test.go` files.

### Cross-Language Patterns

When adding or modifying an entity, update both Python and Go to maintain parity. Python entities use Pydantic v2 with field aliases; Go entities use JSON struct tags. Both must serialize to the same JSON shape.

## Code Style

### Python
- **2-space indentation**, 120 char line length
- Single quotes for strings
- Full type annotations required (Python 3.13+)
- Ruff handles linting and formatting (config in `pyproject.toml`)
- `ty` for type checking

### Go
- Go 1.25.5+
- `golangci-lint-v2` with strict linter set (see `.golangci.yaml`)
- `gofmt` + `goimports` for formatting
