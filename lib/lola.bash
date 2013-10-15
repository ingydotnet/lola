#------------------------------------------------------------------------------
# Lola -- The Local Language Manager
# Copyright 2013 Ingy döt Net
#
#   LOLA_SRC/lib/lola.bash
#
# This is the 'lola' command dispatcher. It processes global command options,
# determines the specific command, and then loads the plugin for that command.
#------------------------------------------------------------------------------

# Load the BPAN Bash programming framework:
source bpan
# Load standard BPAN commands:
bpan:include bpan/std

Lola:main() {
  local \
    lids= \
    lids=cmd= lid= args=() \
    lola_debug=false lola_verbose=false lola_quiet=false lola_i=false
  Lola:assert-env || return $?
  Lola:get-lids
  Lola:get-options "$@"
  Lola:run-command
}

Lola:assert-env() {
  say okkkk
}

Lola:get-lids() {
:
}

Lola:get-options() {
  for arg; do
    case "$arg" in
    --) break;;
    esac
  done
  args=("$@")
}

Lola:run-command() {
  :
}

Lola:main "$@"

# vim: set sw=2:
