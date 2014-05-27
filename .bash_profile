string_nuke(){
  read -p "Are you sure? " -n 1 -r
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    perl -p -i -e 's/'$1'/'$2'/g' `grep -ril $1 *`
  fi
}

export PATH="/Applications/Postgres93.app/Contents/MacOS/bin:${PATH}"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"
export EDITOR='vim -w'
export PATH=/usr/local/lib:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export EB_HOME="/Applications/AWS-ElasticBeanstalk-CLI-2.6.0/eb/macosx/python2.7"
export PATH=$EB_HOME:$PATH

# s3 config for teamshifter
S3_KEY="AKIAIR6RXFL2YRRAQ5MA"
S3_SECRET="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"
S3_BUCKET="http://teamshifter.s3.amazonaws.com/"

#export NODE_PATH=/usr/local/node_modules
alias tmux="TERM=screen-256color-bce tmux"
alias vim=" /usr/local/Cellar/vim/7.4.253/bin/vim"
alias string_nuke=string_nuke
alias mysql_start="/usr/local/Cellar/mysql/5.5.25/support-files/mysql.server start"
alias mysql_stop="/usr/local/Cellar/mysql/5.5.25/support-files/mysql.server stop"

[[ -s "/Users/arhautau/.rvm/scripts/rvm" ]] && source "/Users/arhautau/.rvm/scripts/rvm" #Load RVM into a shell session as a function


function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

YELLOW="\[\e[1;33m\]"
RED="\[\e[1;31m\]"
PS1="$RED[\h:\W] $YELLOW\$(parse_git_branch)% \[\e[0m\]"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
