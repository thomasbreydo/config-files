### ZSH Config ###

# Path to my oh-my-zsh installation.
export ZSH="/Users/thomasbreydo/.oh-my-zsh"

# My custom theme
ZSH_THEME="eastwood"

plugins=(
	git
	yarn
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
	you-should-use
)

export YSU_HARDCORE=1  # must use aliases

source $ZSH/oh-my-zsh.sh


### USER CONFIG ###

## Path ##
export PATH=$PATH:/Users/thomasbreydo/Library/Python/3.8/bin

## Aliases ##

# Python packaging
alias twu="twine upload --skip-existing"
alias sdist="python3 setup.py sdist"
alias bv="bump2version"

# Visual Studio
alias c='code'
alias ca='code -a'

# Clipboard
alias paste='pbpaste'
alias copy='pbcopy'

# Other
alias zshrc='code ~/.zshrc'
mdcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}
