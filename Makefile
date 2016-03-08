DATE = $(shell date)
.PHONY: install clean test cert

install:
	@bash ./install

clean:
	@bash ./clean

test:
	@bash ./test

release:
	@echo "Enter commit message:"
	@read REPLY; \
	echo "${DATE} - $$REPLY" >> CHANGELOG; \
	git add --all; \
	git commit -m "$$REPLY"; \
	git push
