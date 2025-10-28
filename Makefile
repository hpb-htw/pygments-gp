bootstrap:
	python -m venv .venv
	@echo -e "run '\033[0;31msource .venv/bin/activate\033[0m' to activate virtual environment"
	@echo -e "then run '\033[0;31mmake init\033[0m'"

init:
	python -m pip install --upgrade build
	python -m pip install hatch
	python -m pip install -e .

clean:
	rm -rf dist

clean-all:
	rm -rf .venv dist

test:
	hatch test

build: init
	hatch build

deploy: test build
	python -m twine upload --repository testpypi dist/*
