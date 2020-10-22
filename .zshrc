######################## ZSH Config ########################

# Path to my oh-my-zsh installation.
export ZSH="/Users/thomasbreydo/.oh-my-zsh"
export ZSH_THEME="up-to-date-agnoster"
export DEFAULT_USER="thomasbreydo"

plugins=(
	git
	# yarn
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
	you-should-use
	thefuck
)

export YSU_HARDCORE=1  # must use aliases
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=109'  # visible on Solarized
export ENABLE_CORRECTION="true"  # vanilla zsh autocorrection

source $ZSH/oh-my-zsh.sh

# Fuzzy history finding
source ~/.fzf.zsh

######################## USER CONFIG ########################

# # # # # # # # # Path # # # # # # # # # 
export PATH="/Users/thomasbreydo/Library/Python/3.8/bin:$PATH"
export PATH="/Users/thomasbreydo/.poetry/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
# Make bash 5.0 default bash
export PATH="/usr/local/Cellar/bash/5.0.17/bin:$PATH"
# For metasploit
export PATH="/opt/metasploit-framework/bin:$PATH"

# # # # # # # # # Environment Variables # # # # # # # # # 
# For GDB
export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
# For mega-get, for example
export PATH=/Applications/MEGAcmd.app/Contents/MacOS:$PATH
# For convenvience
export CONFIGFILES='/Users/thomasbreydo/Desktop/Programming/Other/config-files'

# # # # # # # # #  Aliases # # # # # # # # # 

# Python packaging
alias twu="twine upload --skip-existing"
alias sdist_and_bdist="python3 setup.py sdist bdist_wheel"
alias sdist="python3 setup.py sdist"
alias bdist="python3 setup.py bdist_wheel"
alias bv="bump2version"

# Visual Studio
alias c='code'
alias ca='code -a'
alias cn='code -n'

# Clipboard
alias paste='pbpaste'
alias copy='pbcopy'

# Other
alias zshrc='code ~/.zshrc'
alias aliasgrep='alias | grep'
silentfind ()
{
	find $@ 2>&1 | grep -v 'Permission denied\|Operation not permitted'
}
mdcd ()
{
    mkdir -p -- "$1" && cd -P -- "$1"
}


# IP
ip () 
{
	echo "Loc IP: $(ipconfig getifaddr en0)"
	echo "Ext IP: $(curl -s https://ipecho.net/plain)"
}

# Git
alias gcnomsg="git commit -m '' --allow-empty-message"

# gitignore.io
function gi() { curl -sLwn https://www.toptal.com/developers/gitignore/api/$@ ;}

# CTFs
alias ghidra="$HOME/ctftools/ghidra_9.1.2_PUBLIC/ghidraRun"

# Add 'pyenv' to PATH.
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Enable shims and autocompletion for pyenv.
eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
