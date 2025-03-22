.PHONY: requirements.txt requirements-dev.txt

requirements.txt:
	.venv/bin/pipenv requirements > requirements.txt

requirements-dev.txt:
	.venv/bin/pipenv requirements --dev-only > requirements-dev.txt
