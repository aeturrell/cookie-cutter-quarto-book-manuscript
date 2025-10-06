.PHONY: render all

render:
	uv run quarto render

all: render
