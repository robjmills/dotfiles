# Shortcuts
alias dl="cd ~/Downloads"
alias lm="cd ~/code/adoptionlink"
alias dt="cd ~/Desktop"
alias sites='cd ~/Sites'
alias f='open -a Finder ./'
alias artisan="php artisan"
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy"
alias phpunit=./vendor/bin/phpunit
alias codecept='./Vendor/bin/codecept'
alias weather="curl -4 wttr.in/bristol"
alias stage="git checkout master && git push live master & git push live2 master &"

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

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, ""); print }'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="sudo killall -HUP mDNSResponder"


# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
