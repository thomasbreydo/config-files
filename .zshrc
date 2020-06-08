### ZSH Config ###

# Path to my oh-my-zsh installation.
export ZSH="/Users/thomasbreydo/.oh-my-zsh"

# My custom theme
ZSH_THEME="agnoster"
DEFAULT_USER="thomasbreydo"

plugins=(
	git
	yarn
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
	you-should-use
)

export YSU_HARDCORE=1  # must use aliases
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=gray'

source $ZSH/oh-my-zsh.sh


### USER CONFIG ###

## Path ##
export PATH=$PATH:/Users/thomasbreydo/Library/Python/3.8/bin

## Aliases ##

# Python packaging
alias twu="twine upload --skip-existing"
alias sdist_and_bdist="python3 setup.py sdist bdist_wheel"
alias sdist="python3 setup.py sdist"
alias bdist="python3 setup.py bdist_wheel"
alias bv="bump2version"

# Visual Studio
alias c='code'
alias ca='code -a'

# Clipboard
alias paste='pbpaste'
alias copy='pbcopy'

# Other
alias zshrc='code ~/.zshrc'
alias aliasgrep='alias | grep'
mdcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
export PATH="/usr/local/opt/ruby/bin:$PATH"

# IP
ip () {
	echo "Loc IP: $(ipconfig getifaddr en0)"
	echo "Ext IP: $(curl -s https://ipecho.net/plain)"
}

# CTFs
b() { 
	ssh bandit$1@bandit.labs.overthewire.org -p 2220 ${@:2}
}