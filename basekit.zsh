alias bk='cd ~/code/basekit'
alias bkl='bk && tail -f log/*.log log/php-fpm/*.log'
alias bkdl='bk && docker-compose logs --tail=100 -f'
alias mdate="date +%Y%m%d%H%M%S"
alias bkdreup='bk && make stop && make rm && cclear && tclear && bkdup'
alias bkdup='bk && make up'
alias dres="osascript -e 'quit app \"Docker\"' && open -a Docker &&
  while ! docker system info > /dev/null 2>&1; do sleep 1; done && osascript -e 'display notification \"Docker restarted\" with title \"Info\"'"
alias bkdr="dres && cclear && tclear && bk && make up"
alias cclear='bk && rm -f cache/container.php*'
alias tclear='bk && cd tmp && ls | grep -v .gitignore | xargs rm -rf'