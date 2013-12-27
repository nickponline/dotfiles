export EDITOR='vim'
export VISUAL='vim'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\033[01;31m\]\u\[\033[01;30m\]@\[\033[01;33m\]\h \[\033[01;34m\]$PWD\[\033[00m\]$(parse_git_branch) $ '

alias ls='ls -lG'
alias edit='vim'
alias back='cd $OLDPWD'
alias notepad='open -a "Sublime Text 2"'

export PATH=/usr/local/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python2.7/dist-packages/:$PYTHONPATH
export SIMULATORS=simulation_1,simulation_2,simulation_3,simulation_4


