.PHONY: requirements.txt requirements-dev.txt configure Pipfile.lock src/sphinx_theme_ref/assets

PKG_BASENAME := sphinx_theme_ref

VENDOR_OUTPUT_PATH := $(shell realpath ./src/sphinx_theme_ref/assets)

Pipfile.lock:
	.venv/bin/pipenv lock

requirements.txt:
	.venv/bin/pipenv requirements > requirements.txt

requirements-dev.txt:
	.venv/bin/pipenv requirements --dev-only > requirements-dev.txt

configure:
	autoconf

src/sphinx_theme_ref/assets:
	rm -r src/$(PKG_BASENAME)/assets
	make -C vendor/html-theme-ref build/production OUTPUT_PATH=$(VENDOR_OUTPUT_PATH)

# user acceptance testing
uat:
	trap 'kill 0' SIGINT; \
	make -C vendor/html-theme-ref watch OUTPUT_PATH=$(VENDOR_OUTPUT_PATH) & \
	wait

