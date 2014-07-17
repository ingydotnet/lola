set -e

BPANLIB="$(set -- $PWD/ext/*/{bin,lib} IFS=':'; echo "$*")"
PATH="$BPANLIB:$PATH"

source bpan
source lib/std.bash
include 'test/more'
export TEST_TAP_BAIL_OUT_ON_ERROR=1

source ./bin/lola-init

# vim: set sw=2:
