#!/bin/bash

source 'test/setup.bash'

{
  line="$(head -n1 bin/lola-init)"
  ok [ -n "$line" ] 'bin/lola-init exists'
  isnt "${line:0:2}" "#!" 'bin/lola-init should not have #!'
}

done_testing
# vim: set sw=2 ft=sh:
