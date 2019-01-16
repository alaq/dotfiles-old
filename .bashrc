alias ll="ls -l"
alias gl='git log --oneline -n 5'
alias gpm='git pull master'
alias gcm='git checkout master'
alias grh='git reset --hard HEAD'
alias gs='git status'
alias gd='git diff'
alias h='history | grep' # Use like, "h ssh" to see all ssh in your history

alias e='emacsclient -create-frame --alternate-editor="" -t &'

alias | sed -E "s/^alias ([^=]+)='(.*)'$/alias \1 \2 \$*/g; s/'\\\''/'/g;" >~/.emacs.d/eshell/alias
