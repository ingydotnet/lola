#!/bin/bash -e

# Lola generates many hardlinks to the same shim file. Some file systems have
# limits: http://article.gmane.org/gmane.comp.file-systems.btrfs/3836

source 'test/setup.bash'

[ -n "$LOLA_TEST_ALL" ] ||
  plan skip_all 'This test is too slow. Set LOLA_TEST_ALL=1 to run.'

plan tests 1

rm -fr hardlink
mkdir hardlink
(
  cd hardlink;
  echo O HAI > 0;
  for (( i = 1; i <= 1000; i++ )); do
    ln 0 $i
  done
)
is "$(ls -1 hardlink/[1-9]* | wc -l)" 1000 \
  'Can make 1000 hardlinks in a directory'
rm -fr hardlink

# vim: set sw=2 ft=sh:
