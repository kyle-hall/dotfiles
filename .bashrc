
alias gs="git status"
alias gull="git pull"
alias gib="git branch"
alias gmit="git commit -m"
alias gecko="git checkout"
alias gush="git push"
alias gad="git add"
alias gmm="git checkout master && git pull && git checkout - && git merge master"
alias la="ls -a"
alias ll="ls -lh"

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi


GOPATH="/Users/kyle/go/src"
GOBIN="/Users/kyle/go/bin"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH=$PATH:$GOBIN
export AWS_DEFAULT_REGION=us-east-2
export DARK_SKY_API_KEY=0363906648fc52b3039e33c27ab08eaa
export WEATHER_APP_GOOGLE_API_KEY=AIzaSyDx0pR09cHwOEWbR7MapIaof1qgvywLSag

export PATH="/Users/kyle/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"

