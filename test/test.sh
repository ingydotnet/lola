#!/bin/bash

set -ex

rm -fr foo bar

mkdir foo; cd foo; plenv local 5.14.4; cd ..
mkdir bar; cd bar; plenv local 5.19.6; cd ..

# In both foo and bar, put this file, called ver.pl and make it executable:

echo "#!/usr/bin/env perl
use v5.10;
say $^V;
" > foo/ver.pl

cp foo/ver.pl bar/ver.pl

chmod +x foo/ver.pl bar/ver.pl

# Now what do these do?

foo/ver.pl
bar/ver.pl
cd foo; ../bar/ver.pl; cd ..
cd bar; ../foo/ver.pl; cd ..
