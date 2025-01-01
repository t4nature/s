# source /etc/profile
# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/go/bin:$HOME/object:$HOME/.cargo/bin:$HOME/.local/bin
# export ssr_pro="http://127.0.0.1:9910"; export https_proxy=$ssr_pro; export http_proxy=$ssr_pro; export ftp_proxy=$ssr_pro; export ALL_PROXY=$ssr_pro; export all_proxy=$ssr_pro; export HTTP_PROXY=$ssr_pro; export HTTPS_PROXY=$ssr_pro; export GOPROXY="https://goproxy.cn"; export GOPROXY="https://mirrors.aliyun.c"; export GOPROXY="https://goproxy.io"

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"
export HOST=msi

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="kphoen"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# [[ -s /root/.autojump/etc/profile.d/autojump.sh ]] && source /root/.autojump/etc/profile.d/autojump.sh
# autoload -U compinit && compinit -u
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
PATH=~/object/frp_0.27.0_linux_amd64:/usr/local/mysql/bin:/usr/local/mysql/lib:$PATH
# You may need to manually set your language environment
export LANG=zh_CN.UTF-8
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin

# Enable the go modules feature
# export GO111MODULE=on
# Set the GOPROXY environment variable
export GOPROXY=https://goproxy.io

# go env -w GOPROXY=https://goproxy.io,direct
# Set environment variable allow bypassing the proxy for selected modules
# go env -w GOPRIVATE=*.corp.example.com

# export GOS_UPSTREAM_ADDRESS='https://goproxy.io'
# export JAVA_HOME=/usr/share/jdk1.8.0_211  ## 这里要注意目录要换成自己解压的jdk 目录
# export JRE_HOME=${JAVA_HOME}/jre
# export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
# export PATH=${JAVA_HOME}/bin:$PATH

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



source ~/.alize.sh










setopt nonomatch
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && cd && cd .oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# /bin/bash ~/cofig/shs/new_screen.sh

# if [ ! -z ${STY} ];then
    # echo "\n\n\n\n\nin SCREEN  ${STY}"
# else
    # screen -R
# fi
    # screen -L -t `date +D%y.%m.%dT%H:%M:%S` -S `date +D%y.%m.%dT%H:%M:%S`
 # -L -t `date +D%y.%m.%dT%H:%M:%S` -S `date +D%y.%m.%dT%H:%M:%S`


