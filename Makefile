.PHONY: test lint run

test:
	python -m pytest -q

lint:
	python -m compileall -q .

run:
	curl localhost:8000/v1/chat \
