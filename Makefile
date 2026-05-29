.PHONY: install test lint format type-check check clean

install:
	uv sync --dev

test:
	uv run pytest

lint:
	uv run ruff check .

format:
	uv run ruff format .

type-check:
	uv run mypy src tests

check: lint type-check test

clean:
	rm -rf .pytest_cache .ruff_cache .mypy_cache htmlcov .coverage