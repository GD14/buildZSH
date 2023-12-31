#!/bin/bash

#安装oh-my-zsh
userhome=$HOME

rm -rf "$HOME/.oh-my-zsh/"

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh 

#安装zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#安装zsh-syntax-highlighting
git clone https://gitee.com/Annihilater/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#安装autojump
git clone https://github.com/joelthelion/autojump.git
cd autojump
./install.py

cd ..
rm -rf autojump

#替换主题色
cp -f gianu.zsh-theme  "$HOME/.oh-my-zsh/themes/gianu.zsh-theme"

#替换zshrc文件
cp -f zshrc "$HOME/.zshrc"