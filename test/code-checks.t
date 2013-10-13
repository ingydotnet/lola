#!/bin/bash

source 'test/setup.bash'

plan tests 2

{
  line="$(head -n1 bin/lola-init)"
  ok [ -n "$line" ] 'bin/lola-init exists'
  isnt "${line:0:2}" "#!" 'bin/lola-init should not have #!'
}

# vim: set sw=2 ft=sh:
