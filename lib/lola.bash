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
  say Run Lola Run!

  Lola:get-options "$@"
  Lola:run-command
}

Lola:get-options() {
  :
}

Lola:run-command() {
  :
}

Lola:main "$@"

# vim: set sw=2:
