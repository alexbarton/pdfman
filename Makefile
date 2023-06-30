#
# Makefile
#

SOURCE_ROOT ?= $(CURDIR)

PDFMAN_BIN ?= $(DESTDIR)$(PREFIX)/bin/pdfman

include ./Makefile.ax

check-local:
	./pdfman --help 2>&1 | grep -F 'Usage: pdfman' >/dev/null

install-local:
	install -p -o "$(USER)" -g "$(GROUP)" -m 755 pdfman "$(PDFMAN_BIN)"
