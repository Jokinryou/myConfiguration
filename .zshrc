# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jokinryou"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="/Applications/Xcode.app/Contents/Applications/Application Loader.app/Contents/Frameworks/ITunesSoftwareService.framework/Support:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"

alias ggpullrb='git pull --rebase origin $(git_current_branch)'
alias ggr='git review'
alias ggbr='git branch'
alias ggam='gc --amend'
alias ggcho='git checkout'
alias ggcp='git cherry-pick'
alias podi='pod install'
alias xcode='open -a /Applications/Xcode.app'
alias acode='open -a /Applications/AppCode.app'
alias oo='open .'
alias cat='bat --paging=never'

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

export LDFLAGS="-L/usr/local/opt/ruby@2.6/lib"
export CPPFLAGS="-I/usr/local/opt/ruby@2.6/include"
export PATH=~/.npm-global/bin:$PATH
export PATH="$PATH:./node_modules/.bin"

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

export PATH="/usr/local/opt/ruby@2.6/bin:$PATH"
