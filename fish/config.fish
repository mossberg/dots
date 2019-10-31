source ~/.aliases
source ~/.abbr.fish

fish_vi_key_bindings

# env variables
set -g -x PATH ~/bin /users/mark/Library/Python/3.7/bin/ $PATH
set -g -x fish_greeting ""

eval (python3 -m virtualfish)
