set -b
HISTSIZE=500000
HISTFILESIZE=5000000
HISTTIMEFORMAT='%F %T '
# because of failing autocompletion with spaces
shopt -u progcomp
alias ll='ls -lha --color=always'
alias ls='ls --color=always'
alias vi='vim'
alias cd..='cd ..'
alias claer='clear'
alias duf='du -sk .[!.]* * | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'
PS1='[\A][$( echo $?;)][\u@\h:\w]# \[\]'
