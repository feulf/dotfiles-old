# git auto completition
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#java
export JAVA_HOME=$(/usr/libexec/java_home)


# colors
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Httpd alias
PATH_WEB="/Applications/MAMP/htdocs/"
alias web="cd ${PATH_WEB}"
alias dose="cd ${PATH_WEB}yourdose"

export PATH=/bin:/sbin/:/usr/bin:/usr/sbin:/usr/local/bin:/Users/federicoulfo/pear/bin:/Library/Developer

function gitcommit() {
  branch=$(git branch | sed -n -e 'v/^\* bug-\(.*\)/\1/p')
  git commit -m "bugzid:${branch} $1"
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
