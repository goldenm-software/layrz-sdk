.PHONY: manual-release
manual-release:
	@(trap "rm -f LICENSE CHANGELOG.md" EXIT INT TERM; cp "$(ROOT)/LICENSE" .; cp "$(ROOT)/CHANGELOG.md" .; flutter pub publish)

.PHONY: dry-run
dry-run:
	@(trap "rm -f LICENSE CHANGELOG.md" EXIT INT TERM; cp "$(ROOT)/LICENSE" .; cp "$(ROOT)/CHANGELOG.md" .; flutter pub publish --dry-run)

.PHONY: checks
checks:
	dart format --output=none --set-exit-if-changed .
	flutter analyze
	flutter test

.PHONY: clean
clean:
	flutter clean
	rm -f LICENSE CHANGELOG.md

.PHONY: freezed
freezed:
	dart run build_runner build --delete-conflicting-outputs

.PHONY: frizalo
frizalo: freezed

.PHONY: test
test:
	flutter test

.PHONY: coverage
coverage:
	flutter test --coverage
	awk -F: '/^LH:/ {hit+=$$2} /^LF:/ {total+=$$2} END { if (total>0) printf "Coverage: %.2f%% (%d/%d lines)\n", hit*100/total, hit, total; else print "No coverage data" }' coverage/lcov.info