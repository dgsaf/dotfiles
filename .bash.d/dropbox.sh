db_backup () {
    sync_dotfiles
    sync_nixos

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
