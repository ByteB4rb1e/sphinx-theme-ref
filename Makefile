.PHONY: requirements.txt requirements-dev.txt configure Pipfile.lock

Pipfile.lock:
	.venv/bin/pipenv lock

requirements.txt:
	.venv/bin/pipenv requirements > requirements.txt

requirements-dev.txt:
	.venv/bin/pipenv requirements --dev-only > requirements-dev.txt

configure:
	autoconf
