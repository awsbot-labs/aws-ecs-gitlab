DATE = $(shell date)
.PHONY: install clean test cert

all: install

install:
	@bash ./install

clean:
	@bash ./clean

test:
	@bash ./test

cert:
	@bash ./cert

release:
	@echo "Enter commit message:"
	@read REPLY; \
	echo "${DATE} - $$REPLY" >> CHANGELOG; \
	git add --all; \
	git commit -m "$$REPLY"; \
	git push
