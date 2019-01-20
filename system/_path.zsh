export PATH="./bin:/usr/local/bin:/usr/local/sbin:$DOTFILES/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	export PATH="$HOME/.linuxbrew/bin:$PATH"
	export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
	export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
fi

export PATH=$HOME/.local/bin:$PATH
