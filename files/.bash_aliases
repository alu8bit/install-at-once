# terminal
alias c='clear'
alias r='reset'

# system
alias god='sudo -i'
alias root='sudo -i'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias h='history | grep'

alias ll='ls -la'
alias mkdir='mkdir -pv'
alias rm='rm -i'
alias port='netstat -tunapl'

# display numbers in a human readable format
alias df='df -h'
alias du='du -h'
alias free='free -h'

# monitor logs
alias syslog='sudo tail -100f /var/log/syslog'
alias messages='sudo tail -100f /var/log/messages'

# apt
alias apti='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias aptp='sudo apt-get --purge  remove'
alias apts='apt-cache search'
alias aptu='sudo apt-get update'
