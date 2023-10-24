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

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

autoload -Uz select-bracketed select-quoted
zle -N select-quoted
zle -N select-bracketed
for km in viopp visual; do
  bindkey -M $km -- '-' vi-up-line-or-history
  for c in {a,i}${(s..)^:-\'\"\`\|,./:;=+@}; do
    bindkey -M $km $c select-quoted
  done
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $km $c select-bracketed
  done
done
