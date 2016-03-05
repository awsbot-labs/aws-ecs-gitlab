DATE = $(shell date)

release:
	@echo "Enter commit message:"
	@read REPLY; \
	echo "${DATE} - $$REPLY" >> CHANGELOG; \
	git add --all; \
	git commit -m "$$REPLY"; \
	git push