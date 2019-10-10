#!/bin/bash

clean () {
echo ">> cleaning!"
rm -rfv $HOME/.tmux.conf
rm -rfv $HOME/.aliases
rm -rfv $HOME/.abbr.fish

}

link () {
echo ">> linking!"
	ln -sfv $PWD/tmux.conf $HOME/.tmux.conf
	ln -sfv $PWD/aliases $HOME/.aliases
	ln -sfv $PWD/abbr.fish $HOME/.abbr.fish

	ln -sfv $PWD/gitconfig $HOME/.gitconfig

	ln -sfv $PWD/fish/config.fish $HOME/.config/fish
	ln -sfv $PWD/fish/functions/fish_prompt.fish $HOME/.config/fish/functions
	ln -sfv $PWD/fish/functions/fish_right_prompt.fish $HOME/.config/fish/functions


}

init () {
echo ">> init!"
mkdir -v ~/bin
mkdir -vp ~/.config/fish/functions
}

clean
init
link


