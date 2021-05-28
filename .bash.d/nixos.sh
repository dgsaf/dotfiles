# nixos files
nixos_files="\
configuration.nix \
hardware/ "

# sync live nixos files to backup nixos directory (in dotfiles directory)
sync_nixos () {
    for file in $nixos_files; do
        rsync -arv --relative \
              /etc/nixos/./${file} ${HOME}/Dropbox/dotfiles/nixos/
    done
}
export sync_nixos
