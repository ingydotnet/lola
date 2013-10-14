#!/bin/bash -e

source 'test/setup.bash'

pass good
pass 'not bad'

lola p5 alias foo ~/local/opt/plenv

done_testing
# vim: set sw=2 ft=sh:
