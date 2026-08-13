.PHONY: manual-release dry-run checks clean

# Temporary License and Changelog
# This Makefile copies LICENSE and CHANGELOG.md from the monorepo root
# into the dart/ directory during publish operations. These files are
# required by pub but exist only at the repo root. The trap ensures
# cleanup even if the publish fails or the user interrupts (Ctrl-C).

ROOT := $(shell git rev-parse --show-toplevel)

manual-release:
	@(trap "rm -f LICENSE CHANGELOG.md" EXIT INT TERM; cp "$(ROOT)/LICENSE" .; cp "$(ROOT)/CHANGELOG.md" .; flutter pub publish)

dry-run:
	@(trap "rm -f LICENSE CHANGELOG.md" EXIT INT TERM; cp "$(ROOT)/LICENSE" .; cp "$(ROOT)/CHANGELOG.md" .; flutter pub publish --dry-run)

checks:
	dart format --output=none --set-exit-if-changed .
	flutter analyze
	flutter test

clean:
	flutter clean
	rm -f LICENSE CHANGELOG.md
