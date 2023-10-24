source ~/.shell_config/colors.sh
source ~/.shell_config/completion.sh
source ~/.shell_config/alias.sh
source ~/.shell_config/bindings.sh
source ~/.shell_config/bd.sh

# opam configuration
test -r /Users/Clement/.opam/opam-init/init.zsh && . /Users/Clement/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PATH=$PATH:~/zig
