cat <<... >&2
In order to use the 'lola' command you first need to run:

    source '$srcpath/bin/lola-init'

You can do that now and Lola will work, but only for this shell session. To
setup Lola permanently, add that line to your shell startup file.
(Like ~/.bashrc or ~/.zshrc)

NOTE: Lola will install/store all your languages, packages and settings in:

    $HOME/.lola/

To change the location of this root directory, you need to set the LOLA_ROOT
variable first:

    LOLA_ROOT='/path/to/lola/root'
    source '$srcpath/bin/lola-init'

Choose your LOLA_ROOT wisely. Once you install languages, you can't easily
change this location.
...
