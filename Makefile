install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

all: install lint test
