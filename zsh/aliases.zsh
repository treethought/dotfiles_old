alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command
alias omz='subl ~/.oh-my-zsh'
alias dotfiles='subl $DOTFILES'

# Easy folder and file loading
alias apps="cd /Applications"
alias finder="open . -a finder.app"

alias notes="e ~/notes"



# Network
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ and print $1'"
alias whois="whois -h whois-servers.net"
