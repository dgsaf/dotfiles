# copy common tex style package and template to current directory
# requires name for tex file
tex_template () {
    cp ~/.bash.d/tex/base.sty ./base.sty
    cp ~/.bash.d/tex/template.tex ./${1}.tex
}

export tex_template
