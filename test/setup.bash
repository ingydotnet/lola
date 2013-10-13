set -e

PATH="$(
  set -- \
    $PWD/bin \
    $PWD/ext/*/{bin,lib}
  IFS=':'; echo "$*"
):$PATH"

source bpan
bpan:include 'test/more'
source lola-init

# vim: set sw=2:
