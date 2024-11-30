# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
ZSH_CUSTOM=~/.dotfiles/custom

source /etc/environment
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
    python
    autoupdate
    zsh-syntax-highlighting
    tmux
    vi-mode
    golang
    zellij
    pdm
    zsh-autosuggestions
    docker-compose
    command-not-found
    mvn
    docker-compose
    fzf
    colored-man-pages
    fzf-tab
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

# vi mode 的配置
# 启用不同光标
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_CURSOR_NORMAL=1
VI_MODE_CURSOR_INSERT=5
VI_MODE_CURSOR_VISUAL=2
# 修改按键延迟
KEYTIMEOUT=5

# Fetch Windows ip address inside WSL environment
# WINDOWS_IP=$(ip route | grep default | awk '{print $3}')
WINDOWS_IP=localhost
PROXY_HTTP="http://${WINDOWS_IP}:41091"
PROXY_SOCKS5="${WINDOWS_IP}:41091"

# Git proxy
proxy_git() {
    git config --global http.https://github.com.proxy ${PROXY_HTTP}
}

# Set proxy
set_proxy() {
    export http_proxy="${PROXY_HTTP}"
    export https_proxy="${PROXY_HTTP}"
    proxy_git
}

# Unset proxy
unset_proxy() {
    unset http_proxy
    unset https_proxy
    git config --global --unset http.https://github.com.proxy
}
# Set alias
alias spp=set_proxy
alias upp=unset_proxy

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

source /etc/profile.d/maven.sh
source /etc/profile.d/gradle.sh

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
# pnpm
export PNPM_HOME="/home/yyx/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# 添加go的path
export PATH=$PATH:/usr/local/go/bin

export PATH="$PATH:/opt/nvim-linux64/bin"

eval "$(zoxide init zsh)"

export PATH="$PATH:/opt/nvim-linux64/bin"
# nvim不同发行版
alias nvk='NVIM_APPNAME="nvim-kickstart" nvim'
alias nve='NVIM_APPNAME="nvim-experiment" nvim'
alias nv='nvim'

# this remaps `vv` to `L`
# bindkey -M vicmd 'L' edit-command-line
alias mv="mv -i"
alias chx="chmod +x"
alias ld="lazydocker"
alias lg="lazygit"
alias ze="zellij"
alias py="python"
alias l='eza -laah'
alias la='eza -lAh'
alias ll='eza -lh'
alias ls='eza --icons=auto'
alias lsa='eza -lah'
function ch() { curl -m 7 "http://cheat.sh/$1"; }
eval "$(~/.local/bin/mise activate zsh)"
eval "$(mise activate zsh --shims)"

export EDITOR=nvim
export VISUAL="$EDITOR"

ZELLIJ_AUTO_ATTACH=true
if [[ "$TERM_PROGRAM" != "vscode" ]]; then
    if [[ -z "$ZELLIJ" ]]; then
        if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
            zellij attach -c --force-run-commands recurrent
        else
            zellij
        fi

        if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
            exit
        fi
    fi
fi
