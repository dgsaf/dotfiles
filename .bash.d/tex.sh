# copy common tex style package and template to current directory
# requires name for tex file
tex_template () {
    cp ${HOME}/.tex_templates/base.sty ./base.sty
    cp ${HOME}/.tex_templates/template.tex ./${1}.tex
}

export tex_template
