#!/bin/bash
ensure_containing_dir_exists() {
    local CONTAINING_DIR
    CONTAINING_DIR="$(dirname "$1")"
    if [ ! -d "$CONTAINING_DIR" ]; then
        echo " >> Creating directory $CONTAINING_DIR"
        mkdir -p "$CONTAINING_DIR"
    fi
}
CONF_FILE=$HOME/.config/fish/conf.d/fnm.fish
ensure_containing_dir_exists "$CONF_FILE"
echo "Installing for Fish. Appending the following to $CONF_FILE:"
echo ""
echo '  # fnm'
echo '  set PATH "'"$INSTALL_DIR"'" $PATH'
echo '  fnm env | source'

echo '# fnm' >>$CONF_FILE
echo 'set PATH "'"$INSTALL_DIR"'" $PATH' >>$CONF_FILE
echo 'fnm env | source' >>$CONF_FILE