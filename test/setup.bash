set -e

BASHLIB="`find $PWD -type d | grep -E '/(bin|lib)$' | xargs -n1 printf "%s:"`"
PATH="$BASHLIB:$PATH"

source bash+ :std

export TEST_TAP_BAIL_OUT_ON_ERROR=1

source ./bin/lola-init

# vim: set sw=2:
