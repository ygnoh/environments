
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Git branch in prompt.

parse_git_branch() {

	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\[\033[0;32m\]\u\[\033[0;31m\]@\[\033[0;32m\]MacBookPro:\W\[\033[0;93m\]\$(parse_git_branch)\[\033[00m\] $ "

# mahout environment at CNU on 161006
#export MAHOUT_HOME=/Users/yonggoo/Desktop/ferrari_project/mahout/apache-mahout-distribution-0.12.2
#export MAHOUT_LOCAL=true

# for MacTex on 170329
export MACTEX=/Library/TeX/
