SHELL := bash

DEST ?= $(HOME)/.claude

.PHONY: install
install:
	@status=0; \
	while IFS= read -r -d '' f; do \
		f=$${f#./}; \
		dest="$(DEST)/$$f"; \
		mkdir -p "$$(dirname "$$dest")" \
			&& ln -sfT "$(CURDIR)/$$f" "$$dest" \
			|| { status=1; continue; }; \
		echo "$$dest -> $(CURDIR)/$$f"; \
	done < <(find . \( -name .git -o -name .claude \) -prune -o \
		-type f ! -name Makefile ! -name .gitignore -print0); \
	exit $$status
