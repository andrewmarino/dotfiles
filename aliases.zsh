# PHP
alias phpserver="php -S localhost:8000"

# Shortcuts
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias hyperconfig="cd ~ && vi .hyperterm.js"
alias hosts="code /etc/hosts"
alias flush="dscacheutil -flushcache"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias vblist="vboxmanage list runningvms"
alias catdb="cat *.sql > dump.sql"
alias ohwell="echo '¯\_(ツ)_/¯' | pbcopy"

# System
alias showfiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
