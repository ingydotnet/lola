.PHONY: doc test

default: help

help:
	@echo 'Makefile targets:'
	@echo ''
	@echo '  test       - Run tests'
	@echo ''

test:
	prove $(PROVEOPT) test/

update: doc

doc: ReadMe.pod Spec.pod

ReadMe.pod: doc/Lola.swim
	swim --to=pod --wrap=1 --complete=1 $< > $@

%.pod: doc/%.swim
	swim --to=pod --wrap=1 --complete=1 $< > $@
