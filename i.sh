sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd && cd .oh-my-zsh/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && cd && mv .zshrc .old.zshrc

echo 'export ZSH="$HOME/.oh-my-zsh"
export HOST=localhost
ZSH_THEME="kphoen"
plugins=(git)
source $HOME/.oh-my-zsh/oh-my-zsh.sh
export LANG=zh_CN.UTF-8
source ~/.alize.sh
setopt nonomatch
source $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' > .zshrc

git clone https://github.com/VundleVim/vundle.vim.git ~/.vim/bundle/Vundle.vim

MY_CONFIG_URL='https://raw.githubusercontent.com/t4nature/s/main/'
curl $MY_CONFIG_URL\".alize.sh\" -L > .alize.sh



source ~/.zshrc
