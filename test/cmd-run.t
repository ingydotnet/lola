#!/bin/bash -e

source 'test/setup.bash'

plan tests 2

pass good
pass 'not bad'

# lola run p5=19.4@std perl -E 'say $]'

# vim: set sw=2:
