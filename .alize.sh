# export GO111MODULE=on
# export HOST=
# export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/
# export ELECTRON_BUILDER_BINARIES_MIRROR=http://npm.taobao.org/mirrors/electron-builder-binaries/


cd_ll()
{
    # 使用‘\’可以调用原始命令
    \cd $1
    ls -ahl --color=always
}

rerm()
{
    alias rm='remov1(){ /bin/rm -i $@; };remov1 $@'
}


nsc1()
{
    # screen -L -t "$(date +D%y.%m.%dT%H:%M:%S)${PWD##*/}" -S "$(date +D%y.%m.%dT%H:%M:%S)${PWD##*/}";
    tmux new -s "$(date +%s)$PWD"
}


MY_CONFIG_URL='https://raw.githubusercontent.com/t4nature/s/main/'
alias get_my_gitignore="curl $MY_CONFIG_URL\"gitignore\" > .gitignore"
alias get_my_vimrc="curl $MY_CONFIG_URL\"vimrc\" > .vimrc"
alias get_my_alize="curl $MY_CONFIG_URL\".alize.sh\" > .alize.sh && source .alize.sh"
alias get_gitignore='get_my_gitignore'

alias update_vundle='v -c "PluginUpdate"'

alias update_rustup='rustup update stable && rustup override set stable'
alias update_pip='pip list --outdated --format=json | jq -r ".[] | .name" | xargs -n 1 pip install --upgrade'
alias update_cargo_packages='cargo install-update -ag; \rm  $TMPDIR/cargo-install* -rf'
# alias update_cargo_packages='cargo install-update -a'
alias update_ycm='cd  ~/.vim/bundle/YouCompleteMe && git pull origin && git submodule update --init --recursive'



alias szz='source ~/.zshrc'
alias sz='source ~/.alize.sh'
# alias up='unset https_proxy; unset ALL_PROXY; unset http_proxy; export GOPROXY=""; unset proxyserveraddr; unset proxyserverport; unset HTTP_PROXY; unset HTTPS_PROXY; unset FTP_PROXY; unset all_proxy; unset SOCKS_PROXY; unset NO_PROXY; unset ftp_proxy; unset socks_proxy; unset no_proxy;'
alias up='export GOPROXY=""; unset https_proxy ALL_PROXY http_proxy proxyserveraddr proxyserverport HTTP_PROXY HTTPS_PROXY FTP_PROXY all_proxy SOCKS_PROXY NO_PROXY ftp_proxy socks_proxy no_proxy'
alias bu='bu1(){ clang -v $@ && echo "-------now begin running-------" && ./a.out; }; bu1 $@'
alias vps='ssh -o ServerAliveInterval=30 -p 28422 root@144.34.182.118'
alias vhs='vim ~/.zsh_history'
alias pd='echo ${PWD##*/}'
alias pw='echo ${PWD##*/}'
# alias cp='cp -avvv'
# alias pro='export ssr_pro="192.168.98.226:9910"; export https_proxy=$ssr_pro; export http_proxy=$ssr_pro; export ftp_proxy=$ssr_pro; export ALL_PROXY=$ssr_pro; export all_proxy=$ssr_pro; export HTTP_PROXY=$ssr_pro; export HTTPS_PROXY=$ssr_pro; export GOPROXY="https://goproxy.cn"; export GOPROXY="https://mirrors.aliyun.com/goproxy"; export GOPROXY="https://goproxy.io"'
# alias pro='export ssr_pro="http://192.168.12.1:9910"; export https_proxy=$ssr_pro; export http_proxy=$ssr_pro; export ftp_proxy=$ssr_pro; export ALL_PROXY=$ssr_pro; export all_proxy=$ssr_pro; export HTTP_PROXY=$ssr_pro; export HTTPS_PROXY=$ssr_pro; export GOPROXY="https://goproxy.cn"; export GOPROXY="https://mirrors.aliyun.c"; export GOPROXY="https://goproxy.io"'
alias pro='sz; export ssr_pro="http://127.0.0.1:9910"; export https_proxy=$ssr_pro; export http_proxy=$ssr_pro; export ftp_proxy=$ssr_pro; export ALL_PROXY=$ssr_pro; export all_proxy=$ssr_pro; export HTTP_PROXY=$ssr_pro; export HTTPS_PROXY=$ssr_pro; export GOPROXY="https://goproxy.io"'
# alias pro='echo 8118'
# alias git='pro && git'
alias gmr='git merge'
alias chu='chgrp mysql ./ -R;chown mysql ./ -R;'
alias rrrm='chattr -ia'
# alias gpl='pro; git pull origin'
alias gpl='git pull origin'
# alias go='gos'
alias gs='git status'
alias gsh='git show'
alias gcb='git checkout -b'
alias gd='git diff'
# alias gr='git reset'
alias gl='git log'
alias gnb='git checkout -b'
alias ggcl='pro && git clone --progress -v'
alias gcl='up && git clone --progress -v'
alias '\gcl'='up && git clone --progress -v'
# alias gcl='env all_proxy=http://127.0.0.1:9910 http_proxy=http://127.0.0.1:9910 https_proxy=http://127.0.0.1:9910 git clone --progress -v'
# alias gcl='git -c http.proxy=http://127.0.0.1:9910 -c https.proxy=http://127.0.0.1:9910 clone --progress -v'
# --recursive '
# alias gcl='git -c http.proxy=socks5://127.0.0.1:1080 -c https.proxy=socks5://127.0.0.1:1080 clone --progress -v'
alias apt='up; sudo apt'
#'clo1(){ git clone https://github.com/$@; };clo1 $@'
alias gclm='clo2(){ git clone git@github.com:t4nature/$@ && cd $@; };clo2 $@'
alias mmi='make && make install'
alias vzc='vim ~/.alize.sh'
alias czc='cp ~/.zshrc'
alias '\rm'='\rm -vvvi'
alias '\mv'='\mv -v'
alias '\cp'='\cp -av'
alias vvc='vim ~/.vimrc'
alias cbc='cp ~/.bashrc'
alias vbc='vim ~/.bashrc'
alias cvc='cp ~/.vimrc'
alias gk='git checkout'
alias gck='git checkout'
# alias gb='time \go build -p 6 -o a.out'
# alias gb='time \go install -i -v -p 6'

# alias gbb='time \go install -i -v -p 6 && ~/go/bin/${PWD##*/}'
alias gbb='pro && time \go install -i -v -p 8 && ~/go/bin/${PWD##*/}'

# alias gbb='pro && time \go install -i -v -p 6 && ~/go/bin/this-project'
# alias gbb='pro && time \go install -i -v -p 6 && ~/go/bin/${PWD##*/}'
alias ggb='pro && time \go install -i -v -p 8 && ~/go/bin/${PWD##*/}'
alias composer='composer -vvv'
alias gzip='gzip -vvv'
alias arm='sudo apt remove'
alias wfx='watch -n 1 ls -al --block-size=M'

alias bkp='bkpq(){tar -cvf $*.tar $* && xz -z -9 $*.tar && /bin/rm $* -f}; bkpq'
alias gpp='gc master && gm dev && gp && gc dev'
alias mk='mkdi(){ mkdir -p $@; cd $@; };mkdi $@'
alias tg='bash ~/cofig/shs/tag.sh'
alias ee='export LANG=en_US.utf8'
# alias ec='export LANG=zh_CN.UTF-8'
# alias lss='du -sh'
alias lss='du -h -d 1 '
alias gp='git push origin HEAD'
#alias gp='ssh-shell && git push origin HEAD'
alias tfx='tar xvf'
alias gac='git add -A; git commit --gpg-sign -m'
alias gm='git commit --gpg-sign -v -m'
alias gc='bu'
alias ga='git add'
# alias cp='cp -ia'
alias rm='move1(){ rsync -avcPh $@ ~/backup/ && /bin/rm $@ -rvf; };move1 $@'
#alias mv='mv -i'
alias ll='ls -a -l -h --color=always'
alias ls='ls --color=always'
alias stop='shutdown -h now'
alias cd..='cd ..'
alias cd='cd_ll'
alias itui='gitui'
alias tui='gitui'
alias su='sudo su'
alias systemctl='sudo systemctl'
alias aud='up; sudo apt upgrade -y'
alias cd.='cd ..'
# alias v='gac "`date +%y.%m.%dT%H:%M:%S`"; vim'
alias sb='source ~/.bashrc'
# alias rrm='lsrm(){ ls -alh $@ && echo "\n" && /bin/rm -ivvv $@; }; lsrm $@'
# alias rrm='rerm'
alias l='ll'
alias lll='ll'
alias c='cd'
alias fl='rg -i --color=always'
alias gr='rg'
alias c.='cd..'
alias cd...='cd..'
alias f='ffggg1(){ fg %$@; }; ffggg1 $@'
alias gin='git init; git checkout -b dev1'
# alias cat='less'
alias yii='sudo apt install -fy'
alias yul='sudo apt install -fy --print-uris'
alias dii='dpkg -i'
alias ysc='sudo apt search'
alias yud='sudo apt update -y; sudo apt full-upgrade -y'
alias gab='git branch -r | rg -iv "\->" | while read remote; do git branch --track "${remote#origin/}" "$remote"; done && git fetch --all'
alias iop='iotop -d 1.5'
alias iop='iotop -d 1.5'
#3'

alias op='top -d 35'
# alias op='top -c -d 3'
alias goo='googler --proxy localhost:9910 -c zh -l zh -n 5'
alias sc='screen'

# alias sp='ps -ef | rg -v "rg" | rg -i'
alias sp='ps -ef | rg -i'
alias watch='watch -d'
alias lcr='lcr1(){chmod +x $@ && ./$@}; lcr1 $@'
alias csc='rm /var/run/screen/S-root/*'
alias nd='mkdir -p'
alias wsc='screen -wipe'
alias sf='fd1(){ find $1 -iname $2; }; fd1 $@'
alias s='su.sh'
# alias ssudo='ssh root@localhost'
alias gclean='sudo git clean  -d  -fx ""'
alias c/='cd /'
alias jp='xdotool key Num_Lock'
alias pscp=parallel-scp
alias prsync=parallel-rsync
alias pnuke=parallel-nuke
alias pslurp=parallel-slurp
alias pssh=parallel-ssh
# alias pro='unset https_proxy; unset http_proxy; unset ftp_proxy; unset ALL_PROXY; unset all_proxy; unset HTTP_PROXY; unset HTTPS_PROXY'
# alias a='http --pretty'
alias gfm='sf . *.go | xargs gofmt -w'
alias c-='c -'
alias .c='cd ..'
# alias jfm='python -mjson.tool|less'
alias jfm='jq --color-output | less -R'
alias jq='jq --color-output'
alias k='kill -9'
alias bb='kill -STOP'
alias ff='kill -CONT'
alias xz='xz --memlimit-compress=45% -vvv'
# alias zx='tar -cf - $@ | xz --memlimit-compress=45% -T 0 -9 -c > "output.tar.xz"'
# alias zx='tar -Jcf output.tar.xz'
alias ca='\cat'
alias ss='ifconfig -a'
alias al='alias'
# alias g='gg(){axel $@ || wget $@;}; gg $@;'
alias g='aria2c '
alias gg='wget'
# alias ggg='export all_proxy="socks5://127.0.0.1:1081" && aria2c --file-allocation="falloc"'
alias ggg='pro && aria2c '
alias g6='pro && aria2c  --max-concurrent-downloads=6 -x 16 -j 6 -s 6'
alias w='pro && aria2c  --max-concurrent-downloads=4 -x 4 -j 4 -s 4'
alias aaa='up; axel -n 8 -a -U "http://127.0.0.1:9910"'
alias a='up; axel -n 8 -a -U "http://127.0.0.1:9910"'
alias aa='up; axel -a -n 8'
alias postman='nohup /usr/Postman/Postman &'
alias le='less -R'
alias tfc='tar xvf'
alias dd='dd status=progress'
# alias npm='npm -proxy "http://127.0.0.1:9910"'
# alias npm='npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc --electron_mirror=https://npm.taobao.org/mirrors/electron/'
# alias ggt='gos get -v'
alias ggt='pro && go get -u -v'
alias gt='pro && go get -u -v'
alias re='\less'
alias gb='pro && \go get -v && go install -p 6; up'
# alias nohup='\rm nohup.out; nohup'
alias nohup='mv nohup.out nohup-`date +%Y%m%dT%H%M%S`.out; nohup'
alias kal='killall'
alias cb='gcc -g'
alias gdb='gdb -q'
alias curl='up; curl --doh-url https://cloudflare-dns.com/dns-query'
alias cu='\curl --doh-url https://cloudflare-dns.com/dns-query'
alias http-server='simple-http-server'
alias tcf='tcfq(){tar -cvf $*.tar $* }; tcfq'




alias th='tmux select-pane -L'
alias tj='tmux select-pane -D'
alias tk='tmux select-pane -U'
alias tl='tmux select-pane -R'

alias n='nsc1'
alias car='cargo'
alias cg='cargo'
# alias cg='cargo auditable'
alias cgc='cargo c'
alias cgr='cargo r'
alias nsc='screen -L -t `date +D%y.%m.%dT%H:%M:%S` -S `date +D%y.%m.%dT%H:%M:%S`'
# alias nsc='screen -L -t `date +D%y.%m.%dT%H:%M:%S` -S `date +D%y.%m.%dT%H:%M:%S`'
# alias lsc='screen -ls'
alias ksc='tmux kill-session -t'
alias lsc='tmux ls'
alias rsc='screen -r'
alias r='tmux attach-session -t'
alias pr='pro'
alias ua='unalias'
alias rss='rysnc2(){ rsync -avPhc --progress $@ && echo "\n\n\n" "----------- success: rsync complete ----------" "\n\n"; }; rysnc2 $@'
alias rzs='ryzsnc2(){ rsync -avPhzzc --progress $@ && echo "\n\n\n" "----------- success: rsync complete ----------" "\n\n"; }; ryzsnc2 $@'
alias cp='rysncp(){ rsync  -avPh --progress $@ && echo "\n\n\n" "----------- success: cp complete ----------" "\n\n"; }; rysncp $@'
alias ac='wg222(){ aria2c --max-concurrent-downloads=$1 -x 16 -j $1 -s $@; }; wg222 $@'
alias clc='\clear'
alias gap='gap222(){ gac $@; git fetch origin; git merge origin/`git_current_branch` -m merg; gp && echo "\n\n" "---------- success ----------" "\n\n"; git status; }; gap222 $@'
alias hp='nice -n 19 \htop -d 35'
alias pcg='c $HOME/object/myzsh/oh-my-zsh && pr && gap s; \cd -;'
alias plcg='pcg'
alias rs='rsync  -avPh --progress'
alias rsn='rsync --no-o --no-g --no-p -rltDvPh --progress'
alias rrs='rss'
alias nt='tmux new -s '
alias ntpd='tmux new -s ${PWD##*/}'
alias ntd='tmux new -s ${PWD##*/}'
alias aud='sudo apt full-upgrade -y'
alias a10='echo "1\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5'
# alias one='echo 1'
alias one='a10'
alias md5='md5sum'
alias ax='axel -an'
alias creatAP='nmcli r wifi off && rfkill unblock wlan && create_ap wlan0 eth0 Timi-cail 52292925 --ieee80211ac --ieee80211n -c 8'
alias startWIFI='nmcli r wifi on && rfkill unblock wlan && systemctl restart networking.service network-online.target NetworkManager.service ssh.socket ssh.service'
alias a10='echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5 && echo "\a" && sleep 0.5'
alias '\+x'='chmod +x'
# ua gf
alias ec='echo'











# alias xxz='xxxz(){export xxz_name=$@ && tar cvf $@.tar $@ && xz --memlimit-compress=45% -vvv -9 -T 0 $@.tar;}; xxxz $@'
# alias xxz='export xxz_name=$@ && tar cvf $@.tar $@ && xz --memlimit-compress=45% -vvv -9 -T 0 $@.tar'



# proxy="http://127.0.0.1:8118"
# export https_proxy=$proxy
# export http_proxy=$proxy
# export ftp_proxy=$proxy
# privoxy --user privoxy /etc/privoxy/config
# export http_proxy=http://127.0.0.1:1080
# export https_proxy=http://127.0.0.1:1080
# export ALL_PROXY=http://127.0.0.1:1080#

# export ssr_pro="http://127.0.0.1:9910"
# export https_proxy=$ssr_pro
# export http_proxy=$ssr_pro
# export ftp_proxy=$ssr_pro
# export ALL_PROXY=$ssr_pro
# export all_proxy=$ssr_pro
# export HTTP_PROXY=$ssr_pro
# export HTTPS_PROXY=$ssr_pro

# export GOPROXY="http://127.0.0.1:9910"
export GOPROXY=''
unset proxyserveraddr
unset proxyserverport
unset HTTP_PROXY
unset HTTPS_PROXY
unset FTP_PROXY
unset SOCKS_PROXY
unset NO_PROXY
unset http_proxy
unset https_proxy
unset ftp_proxy
unset socks_proxy
unset no_proxy
unset ALL_PROXY
unset all_proxy

# export MY_CLANGROOT=/usr/local/clang/bin
# export MY_GOROOT=/usr/local/go/bin
# export MY_JAVA_ROOT=/usr/local/jdk1.8.0_211
# export MY_JAVA_BIN=$MY_JAVA_ROOT/bin
# export MY_JRE_BIN=$MY_JAVA_ROOT/jre/bin
export MY_GO_BIN=$HOME/go/bin
export MY_LOCAL_BIN=$HOME/.local/bin
export MY_CARGO_BIN=$HOME/.cargo/bin
# export MY_MYSQL_BIN=/www/server/mysql/bin
# export CUDA_BIN=/usr/local/cuda-10.1/bin
# export CUDA_LIB=/usr/local/cuda-10.0/extras/CUPTI/lib64
# export CUDA_BIN=/usr/local/cuda-10.1/bin
# export CUDA_LIB=/usr/local/cuda-10.1/extras/CUPTI/lib64:/usr/local/cuda-10.1/targets/x86_64-linux/lib:/usr/lib/x86_64-linux-gnu

export PATH=$PATH:/usr/sbin:$MY_GOROOT:$MY_JAVA_BIN:$MY_CLANGROOT:$MY_JRE_BIN:$MY_GO_BIN:$MY_MYSQL_BIN:$MY_CARGO_BIN:$MY_LOCAL_BIN

#:$HOME/.config/TabNine/build/cquery/build
# export PATH=/usr/local/cuda-9.0/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_LIB
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_LIB
#/usr/local/cuda/extras/CUPTI/lib64


# alias ur='ssh  root@192.168.1.2 "loginctl unlock-sessions" & ssh  root@192.168.9.205 "loginctl unlock-sessions" &  ssh  root@192.168.43.65 "loginctl unlock-sessions" & ssh  root@192.168.1.104 "loginctl unlock-sessions"'
# alias u='ssh  root@192.168.1.7  "loginctl unlock-sessions"'
# alias ur='ssh  root@192.168.43.1 "loginctl unlock-sessions" & ssh  root@192.168.1.64 "loginctl unlock-sessions"'
alias ms='rsync --remove-source-files -avPh --progress'
alias tele='tele1(){\curl --doh-url https://cloudflare-dns.com/dns-query https://api.telegram.org/bot1790120798:AAGuN-icyEVNLDDA17U_-te-B0Y9jpgeCI8/sendMessage -F "chat_id=-1001889229062" -F "text=$*" }; tele1 $*'
alias spn='spn1(){ ps -ef | rg -i $1|awk "{print \$2}" |xargs; }; spn1'
alias sodu='renice -n -20'
alias df='df -h'
# alias v='gac "s" & vim'
alias v='vim'
alias save_tmux='tmux cure-pane -S - -E - -p'

alias adb='/system/bin/adb'
alias ssh='ssh -o ServerAliveInterval=30'
# alias ag='ag --noaffinity'
alias ag='fl  -A 5 -B 5'
restart_geph(){
    curl -s -X POST -d '{"jsonrpc":"2.0","method":"kill","params":[],"id":1}' http://127.0.0.1:$1
}
stats_geph(){
    curl -s -X POST -d '{"jsonrpc":"2.0","method":"basic_stats","params":[],"id":1}' http://127.0.0.1:$1
}
replace_strg(){
    sed -i  "s/$1/$2/g"  `\rg $1 $3 -l | xargs`
}
replace_str(){
    sed -i  "s/$1/$2/"  `\rg $1 $3 -l | xargs`
}
alias sg='replace_strg'
alias sstr='replace_str'
# alias yt-dlp='pro && yt-dlp -o "%(title).80s_%(id)s.%(ext)s"'
alias bc='bc -l'
alias sha='sha1sum'
check(){
    sumStr=`$1sum $3|awk '{print \$1}' `
    if [ $sumStr == $2 ]; then
        echo ok
    else
        echo '!! WARNING !!'
    fi

    echo $sumStr
    echo $2
}

alias ssh='ssh -o ServerAliveInterval=30'
alias mu='cvlc --play-and-exit'
# alias m='cvlc --play-and-exit'

source $HOME/.cargo/env
alias fs='ipfs'
alias ta='tail -n 100'
alias yy='pro && yt-dlp -o "%(title).70s_%(id)s.%(ext)s" -i'


# yt(){
    # url=$*
# }
y(){
    url=$*
    yt-dlp -o "%(title).70s_%(id)s.%(ext)s" -i --proxy socks5://127.0.0.1:9909 $url
    # yt-dlp -o "%(title).80s_%(id)s.%(ext)s" -i --proxy socks5://127.0.0.1:9909 $url && exit
}
p(){
    url=$*
    yt-dlp -o "%(title).70s_%(id)s.%(ext)s" -i --proxy socks5://127.0.0.1:19909 $url
    # yt-dlp -o "%(title).80s_%(id)s.%(ext)s" -i --proxy socks5://127.0.0.1:19909 $url && exit
}
alias pp='yt-dlp -o "%(title).70s_%(id)s.%(ext)s" -i --proxy socks5://127.0.0.1:19909'
alias yt='yt-dlp -o "%(title).70s_%(id)s.%(ext)s" -i'
# alias trans='trans -x 127.0.0.1:9910'
# alias trans='trans1(){ trans -e google "$*"; }; trans1'
alias aes='openssl aes-256-gcm'
# alias croc='croc --internal-dns --socks5 "127.0.0.1:19050" --curve p521'

# t(){
#     trans -e google "$*";
#     # trans -e google "$@";
# };

# rec(){
    # while true; do
        # croc --yes --internal-dns --socks5 "127.0.0.1:19909" --curve p521 $@ && break
    # done
# }
# alias croc='croc --internal-dns --socks5 "127.0.0.1:19909" --curve p521'
alias cr='croc --curve p521'

ftc(){
    echo '(' $* '- 32) / 1.8'| \bc -l
}


ctf(){
    echo 32+1.8* $*| \bc -l
}


tr2txt() {
    for word in $@; do
        echo '-----------------------------------' >> trans.txt
        # echo $word
        trans -e google $word >> trans.txt
        echo '-----------------------------------' >> trans.txt
        echo '\n\n\n\n\n\n' >> trans.txt
    done
}


rec(){
    while true; do
        \croc --yes --curve p521 $@ && break
        # croc --yes --internal-dns --socks5 "127.0.0.1:19909" --curve p521 $@ && break
    done
}
alias ub='proot-distro login ubuntu --user ad'
alias li='proot-distro login ubuntu --user ad'
alias gpg='gpg --batch --pinentry-mode loopback'
export GPG_TTY=$(tty)
alias py='python3'


mk_dev_shm()
{
    tmp_path=/dev/shm`pwd`
    mkdir -p $tmp_path
    chmod o-rwx $tmp_path
    cd $tmp_path
}

alias pwd_shm='echo /dev/shm$PWD'
alias goto_pwd_shm='cd /dev/shm$PWD'


mount_shm4user_with_size(){
    WHOAMI=`whoami`

    mkdir -p /mnt/whoami/$WHOAMI
    chown $WHOAMI:$WHOAMI /mnt/whoami/$WHOAMI
    chmod 700 /mnt/whoami/$WHOAMI
    mount -t tmpfs -o size=$2,uid=$(id -u $WHOAMI),gid=$(id -g $WHOAMI) tmpfs /mnt/whoami/$WHOAMI
}

export RUSTC_WRAPPER=sccache
export SCCACHE_CACHE_SIZE="40G"
alias unset_sccache='unset RUSTC_WRAPPER'
export GNUPGHOME=$HOME/.gnupg/trezor
alias ssh-shell='trezor-agent ~/.ssh/trezor-github.pub -v --shell'
alias tz4github='trezor-agent ~/.ssh/trezor-github.pub -s'
alias pyenv='source /usr/local/py3/bin/activate'

export RUSTUP_HOME=/usr/local
export CARGO_HOME=/usr/local
alias installrs='curl --proto "=https" --tlsv1.2 -sSf https://sh.rustup.rs | sh'

alias setacl='sudo setfacl -m u:pi:rwx'

alias cake-cli='monero-wallet-cli --trusted-daemon --daemon-address cakexmrl7bonq7ovjka5kuwuyd3f7qnkz6z6s6dmsy3uckwra7bvggyd.onion:18081 --proxy 127.0.0.1:9050 --password " "'
alias monero-cli-by-tor='monero-wallet-cli --trusted-daemon --daemon-address http://v6a2clstyvpar6rjoqdl75ghjb4joka2hdzv7e2vgtshlzrlu5hojkqd.onion:18081 --proxy 127.0.0.1:9050 --password " "'
alias ja=caja
alias agent=trezor-agent
pyenv
