source ext/bpan-bash/bin/bpan

for f in include includable die err err-; do
    bpan:fcopy bpan:$f $f
done

say() { ! $quiet_output && out "$@"; true; }
say-() { ! $quiet_output && out- "$@"; true; }
nay() { ! $quiet_output && err "$@"; true; }
nay-() { ! $quiet_output && err- "$@"; true; }
log() { :; }

# Check if a function exists:
callable() {
    [ "$(type -t "$1")" == function ]
}
