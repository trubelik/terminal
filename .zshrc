###############################################################################
# TMUX
#
# Sets tmux as default after session starts.
#
# brew install tmux
###############################################################################

if [ "$TMUX" = "" ]; then tmux; fi


###############################################################################
# Base16 Color Themes
#
# source: https://github.com/chriskempson/base16-shell
###############################################################################

BASE16_SHELL="$HOME/.config/base16-shell/"
  [ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
  eval "$("$BASE16_SHELL/profile_helper.sh")"

base16_gruvbox-dark-medium


###############################################################################
# Default powerlevel10k prompt
#
# brew install p10k
#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
###############################################################################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


###############################################################################
# Bindings
###############################################################################

# Bindkeys for better search in history
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward


###############################################################################
# Aliases
###############################################################################

alias ll='ls -laG'
alias vi='code'
# alias vim='code'

# Git
alias addup='git add -u'
alias addall='git add .'
alias addint='git add -i'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull'
alias push='git push'
alias status='git status'
alias tag='git tag'
alias newtag='git tag -a'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'


###############################################################################
# Exports
###############################################################################

# Composer
export PATH="$PATH:$HOME/.composer/vendor/bin"

# GPG - sign commits
export GPG_TTY=$(tty)
