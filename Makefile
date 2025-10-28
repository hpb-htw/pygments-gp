bootstrap:
	python -m venv .venv
	@echo "call source .venv/bin/activate to activate virtual environment"

init:
	pip install -e .
	python -m pip install --upgrade build

clean-all:
	rm -rf .venv

test:
	python -m unittest discover -p "*_test.py"

build: init
	python -m build

deploy: test build
	python3 -m twine upload --repository testpypi dist/*
