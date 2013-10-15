.PHONY: default help test external

EXT_UP_TO_DATE=ext/0.0.2
PLUGIN_UP_TO_DATE=plugin/0.0.1

default:
	help

help:
	@echo 'Makefile targets:'
	@echo ''
	@echo '  test       - Run tests'
	@echo '  externals  - Get external repos'
	@echo ''

test: $(EXT_UP_TO_DATE) $(PLUGIN_UP_TO_DATE)
	prove $(PROVEOPT) test/

external:
	@make -C ext update
	@make -C plugin update

$(EXT_UP_TO_DATE):
	@make -C ext update
	touch $@

$(PLUGIN_UP_TO_DATE):
	@make -C plugin update
	touch $@
