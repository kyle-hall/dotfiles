
alias gs="git status"
alias gull="git pull"
alias gib="git branch"
alias gmit="git commit -m"
alias gecko="git checkout"
alias gush="git push"
alias gid="git diff"
alias gad="git add"
alias gmm="git checkout master && git pull && git checkout - && git merge master"
alias get="git clone"
alias ls="ls -p"
alias la="ls -ap"
alias ll="ls -lahp"
alias nuke="rm -rf"
alias die_metro_bundler="lsof -t -i:8081 | xargs kill -9"

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export FLUTTER_HOME=$HOME/flutter/bin
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$FLUTTER_HOME:$GOBIN:/Users/kyle/.pyenv/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR=~/.nvm
. "/usr/local/opt/nvm/nvm.sh"

eval "$(direnv hook bash)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=$PATH:$HOME/.rvm/bin
