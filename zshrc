bindkey -v
bindkey -M viins kj vi-cmd-mode
bindkey -M vicmd H vi-digit-or-beginning-of-line
bindkey -M vicmd L vi-end-of-line
bindkey -M vicmd Z vi-forward-blank-word
bindkey -M vicmd z vi-forward-word
bindkey -M vicmd n vi-backward-word
bindkey -M vicmd N vi-backward-blank-word
bindkey -M vicmd b vi-repeat-search
bindkey -M vicmd B vi-rev-repeat-search
bindkey -M vicmd q vi-add-next
bindkey -M vicmd Q vi-add-eol
bindkey -M vicmd U redo
bindkey ^Z backward-kill-word

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
autoload -U colors && colors
PS1="%{$fg[yellow]%}%c %{$reset_color%}$ "

alias 'm'='make'
alias 'v'='vi -p'
alias 'g'='git'

# opam configuration
test -r /Users/Clement/.opam/opam-init/init.zsh && . /Users/Clement/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
