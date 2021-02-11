# Load Powerlevel10k
#--------------------------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#--------------------------------------------------------------------------------------------


# ZSH Configuration Options
#--------------------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"               # Path to your oh-my-zsh installation
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"                   # case-sensitive completion
# HYPHEN_INSENSITIVE="true"             # hyphen-insensitive completion
# DISABLE_AUTO_UPDATE="true"            # bi-weekly auto-update checks
# DISABLE_UPDATE_PROMPT="true"          # automatically update without prompting
# export UPDATE_ZSH_DAYS=13             # how often to auto-update (days)
# DISABLE_MAGIC_FUNCTIONS=true          # uncomment if pasting URLs/other text is messed up
# DISABLE_LS_COLORS="true"              # disable colors in ls
# DISABLE_AUTO_TITLE="true"             # disable auto-setting terminal title
ENABLE_CORRECTION="true"                # enable command auto-correction
# COMPLETION_WAITING_DOTS="true"        # display red dots whilst waiting for completion
# DISABLE_UNTRACKED_FILES_DIRTY="true"  # disable marking untracked files under VCS as dirty
# HIST_STAMPS="mm/dd/yyyy"              # command execution time stamp in history command o/p
# ZSH_CUSTOM=/path/to/new-custom-folder # custom folder other than $ZSH/custom
setopt auto_cd
#--------------------------------------------------------------------------------------------


# ZSH Plugins
#--------------------------------------------------------------------------------------------
plugins=(git zsh-autosuggestions sudo copyfile wd)
source $ZSH/oh-my-zsh.sh
#--------------------------------------------------------------------------------------------


# Custom Aliases
#--------------------------------------------------------------------------------------------
source ~/.aliases
#--------------------------------------------------------------------------------------------


# bashrc Configuration
#--------------------------------------------------------------------------------------------
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth # don't put duplicate lines or lines starting with space in the history
HISTSIZE=1000
HISTFILESIZE=2000

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
#--------------------------------------------------------------------------------------------


# Environment Variables
#--------------------------------------------------------------------------------------------
source ~/.environment
#--------------------------------------------------------------------------------------------


# NVM bash_completion
#--------------------------------------------------------------------------------------------
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                    # Loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Loads nvm bash_completion
#--------------------------------------------------------------------------------------------


# Git Completion
#--------------------------------------------------------------------------------------------
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
#--------------------------------------------------------------------------------------------


# ZSH Syntax Highlighter
#--------------------------------------------------------------------------------------------
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#--------------------------------------------------------------------------------------------


# Custom Powerline10k Prompt
#--------------------------------------------------------------------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#--------------------------------------------------------------------------------------------