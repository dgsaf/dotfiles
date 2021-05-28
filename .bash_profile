# ensure interactive
if [[  ! ( $- =~ "i" ) ]]; then
    return 0
fi

# welcome art
# cat .bash.d/art/tear

# aliases
if [ -f ~/.bash.d/aliases ]; then
    . ~/.bash.d/aliases
fi

# dropbox
if [ -f ~/.bash.d/dropbox ]; then
    . ~/.bash.d/dropbox
fi

# functions
if [ -f ~/.bash.d/functions ]; then
    . ~/.bash.d/functions
fi

# prompts
if [ -f ~/.bash.d/prompts ]; then
    . ~/.bash.d/prompts
fi
