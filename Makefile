.PHONY: doc test

EXT_UP_TO_DATE=ext/0.0.2
PLUGIN_UP_TO_DATE=plugin/0.0.1

default: help

help:
	@echo 'Makefile targets:'
	@echo ''
	@echo '  test       - Run tests'
	@echo ''

test: $(EXT_UP_TO_DATE) $(PLUGIN_UP_TO_DATE)
	prove $(PROVEOPT) test/

update: doc

doc: ReadMe.pod Spec.pod

ReadMe.pod: doc/Lola.swim
	swim --to=pod --wrap=1 --complete=1 $< > $@

%.pod: doc/%.swim
	swim --to=pod --wrap=1 --complete=1 $< > $@
