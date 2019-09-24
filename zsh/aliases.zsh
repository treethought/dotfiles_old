alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command
alias omz='e ~/.oh-my-zsh'
alias dotfiles='e $DOTFILES'

# Easy folder and file loading
alias apps="cd /Applications"
alias finder="open . -a finder.app"

alias notes="e ~/org"

# Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"
alias whois="whois -h whois-servers.net"

alias up='ping 8.8.8.8'

alias falias="alias | grep"

alias pyc='find . -name "*.pyc" -exec rm -rf {} \;'
alias grok='~/ngrok'

alias -g L='|less'
alias -g T='|tail'
alias -g G='|grep'
alias -g V='|view -'

alias em='emacsclient -t'

# joplin

alias jj='joplin'
alias ju='joplin use'
alias jl='joplin ls -l'

function jn() {
	if [ $# -eq 0 ]; then
		joplin mknote "$1"
	fi
}

function jt() {
	if [ $# -eq 0 ]; then
		joplin mktodo "$1"
	fi
}

function lh() {
	if [ $# -eq 0 ]; then
		open http://localhost:3000
	else
		open http://localhost:$1
	fi
}

alias music="ncmpcpp"

alias gps="ps aux | grep -v grep | grep"

# standalone magit script
alias magit="emacs -q --load ~/.magit/init.el"

alias hdi="howdoi"

# fasd aliases
alias v="nvim"
alias vf="f -e nvim"
alias vr="f -t -e vim -b viminfo"
alias vp="d -e nvim"
