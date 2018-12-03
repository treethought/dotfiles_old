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

alias -g L='|less'
alias -g T='|tail'
alias -g G='|grep'
alias -g V='|view -'

