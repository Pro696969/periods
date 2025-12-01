# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


export EDITOR='nvim'
export VISUAL='nvim'

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANPAGER="sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman'"
export FZF_DEFAULT_OPTS='--preview "bat --color=always --style=numbers --line-range=:500 {}"'


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions copypath)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# [ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
  export VISUAL='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

path+=$HOME/Downloads/nvim-linux64/bin
path+=$HOME/Downloads/arduino-ide_nightly-20231226_Linux_64bit.AppImage
path+='/media/pro696969/Acer/Users/Pro696969/Desktop/DeskIcons'
alias cls='clear'

# export PATH=$PATH:/home/pro696969/.spicetify

alias ls="eza --icons --group-directories-first -F=always"
alias la="eza --icons --group-directories-first -a -F=always"
alias ll="eza --icons --group-directories-first -a -F=always --long"
alias lsd="ls -D"
alias tree="eza --icons --tree"
alias sn="shutdown now"
alias kys="exit"
alias cat="bat"
alias vsc="code ."
alias rm="rm -i"

alias dysk="dysk -c label+ --color no"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
 
# sudo mount /dev/sda1 /media/pro696969/ && admin 

alias wind="cd /media/pro696969/Acer/Users/Pro696969/Users/Pro696969/Desktop/DeskIcons"
alias myspace="cd /media/pro696969/Data/caniuse/"
alias update="sudo apt-get update && sudo apt-get upgrade"
alias n="nautilus . &"
# alias python="python3"
alias mkdir="mkdir -pv"

# z oxide
eval "$(zoxide init --cmd cd zsh)"


# if the command-not-found package is installed, use it
# if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
#     function command_not_found_handle {
#         # check because c-n-f could've been removed in the meantime
#         if [ -x /usr/lib/command-not-found ]; then
#            /usr/lib/command-not-found -- "$1"
#            return $?
#         elif [ -x /usr/share/command-not-found/command-not-found ]; then
#            /usr/share/command-not-found/command-not-found -- "$1"
#            return $?
#         else
#            printf "%s: command not found\n" "$1" >&2
#            return 127
#         fi
#     }
# fi
alias cal="if [ -t 1 ] ; then ncal -b ; else /usr/bin/cal ; fi"


PESU_SRN="PES2UG22CS281"
PESU_PASS=""


# this is for yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(bat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

mcd(){
  mkdir $1 && cd $1
}

PATHS() {
  echo $PATH | tr : '\n'
}

# alias paths="echo $PATHS | tr : '\n'"
# sofo -d

bindkey -v

# intellij ultimate
export PATH="$HOME/Downloads/stuff/idea-IU-243.25659.59/bin:$PATH"
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export JAVA_HOME='/opt/jdk-17'

export SPARK_HOME=~/spark
export PATH=$SPARK_HOME/bin:$PATH
setopt autocd
