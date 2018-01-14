
alias gs="git status"
alias gull="git pull"
alias gib="git branch"
alias gmit="git commit -m"
alias gecko="git checkout"
alias gush="git push"
alias gad="git add"
alias la="ls -a"
alias ll="ls -lh"
alias ep="elm-package"
alias and="&&"
alias fsviewer="docker run -d -p 4222:4222 --rm nats & ./gradlew build && java -jar server/build/libs/fs-viewer-server.jar --local-dev=true"
alias fsskynet=run_fsskynet
alias ddev="pub run dart_dev "

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

GOPATH="/Users/kyle/go/src"
GOBIN="/Users/kyle/go/bin"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

run_fsskynet() {
	./skynet/skynet-env-teardown.sh &&
	./skynet/skynet-env-setup.sh &&
	./skynet/skynet-test.sh
}

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
export PS1="\u \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PATH=$PATH:$GOBIN

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="$HOME/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kyle/.sdkman"
[[ -s "/Users/kyle/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kyle/.sdkman/bin/sdkman-init.sh"
