# public dotfiles (can be shared)
dotfiles_public="\
.bash.d/ .bash_profile \
.config/zathura/zathurarc \
.emacs.d/init.el .emacs.d/init-config/ .emacs.d/snippets/ .emacs.d/themes/ \
.gitconfig .git-commit-template.txt \
.gnuplot .gnuplot.d/config/ \
.tex_templates/base.sty .tex_templates/template.tex \
.xmonad/xmonad.hs .xmonad/xmobar.hs "

# private dotfiles (not to be shared)
dotfiles_private="\
.hledger.journal \
.password-store/"

# all dotfiles
# dotfiles="${dotfiles_public} ${dotfiles_private}"
dotfiles="${dotfiles_public}"

# sync live dotfiles to backup dotfile directory
sync_dotfiles () {
    for file in $dotfiles; do
        rsync -arv --relative \
              ${HOME}/./${file} ${HOME}/Dropbox/dotfiles/
    done
}
export sync_dotfiles
