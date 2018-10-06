alias d='docker $*'
alias d-c='docker-compose $*'
alias dockerkill='docker kill $(docker ps -q) && docker rm $(docker ps -a -q)'