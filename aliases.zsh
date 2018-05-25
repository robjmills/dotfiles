# Shortcuts
alias f='open -a Finder ./'
alias artisan="php artisan"
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias phpunit=./vendor/bin/phpunit
alias codecept=./vendor/bin/codecept
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias weather="curl -4 wttr.in/bristol"

# Directories
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"

# Vagrant
alias v="vagrant global-status"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vssh="vagrant ssh"
alias vreload="vagrant reload"
alias vrebuild="vagrant destroy --force && vagrant up"

# Docker
alias dstop="docker stop $(docker ps -a -q)"
alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
alias dpurgeimages="docker rmi $(docker images -q)"
dbuild() { docker build -t=$1 .; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias gst="git status"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"

# List all files colorized in long format
alias l="ls -lFG"

# List all files colorized in long format, including dot files
alias la="ls -laFG"

# list all files in long format, including dot files, with sizes human readable
alias ll="ls -lhaFG"

# List only directories
alias lsd='ls -lFG | grep "^d"'

# Enable aliases to be sudo’ed
alias sudo='sudo '