# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# User specific environment and startup programs
alias l="ls -lh --color"
alias ll="ls -lha --color"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
PS1="[\[\033[00;34m\]\A - \u@\H \W\[\033[0m\]]\$ "
