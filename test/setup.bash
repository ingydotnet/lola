set -e

INC="$(set -- $PWD/ext/*/{bin,lib} IFS=':'; echo "$*")"
PATH="$PWD/ext/bpan-bash/bin:$PATH"

source lib/std.bash
include 'test/more'
export TEST_TAP_BAIL_OUT_ON_ERROR=1

source ./bin/lola-init

# vim: set sw=2:
