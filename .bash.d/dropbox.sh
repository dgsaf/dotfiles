dotfiles_priv="\
.bash.d/ .bash_profile \
.config/zathura/zathurarc \
.emacs.d/init.el .emacs.d/init-config/ .emacs.d/snippets/ \
.gitconfig .git-commit-template.txt \
.gnuplot .gnuplot.d/config/ \
.xmonad/"

dotfiles_publ="\
.hledger.journal \
.password-store/"

dotfiles="${dotfiles_priv} ${dotfiles_publ}"

db_dotfiles () {
    for file in $dotfiles; do
        rsync -arv --relative ~/./$file ~/Dropbox/dotfiles/
    done
}
export db_dotfiles

db_nixos () {
    rsync -arv /etc/nixos/configuration.nix $HOME/Dropbox/nixos/
    rsync -arv /etc/nixos/hardware $HOME/Dropbox/nixos/
}
export db_nixos

db_backup () {
    db_dotfiles
    db_nixos

    cwd=$(pwd)

    cd $HOME/Dropbox
    tar -cvzf backup.tar.gz dotfiles nixos university

    cd $cwd
}
export db_backup

hard_backup () {
    db_backup

    sudo cp -fv $HOME/Dropbox/backup.tar.gz /media/personal/backup.tar.gz
}
