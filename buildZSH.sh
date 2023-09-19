#!/bin/bash

#安装oh-my-zsh
rm -rf ~/.oh-my-zsh/
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh 

#安装zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#安装zsh-syntax-highlighting
git clone https://gitee.com/Annihilater/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#安装autojump
git clone https://github.com/joelthelion/autojump.git
cd autojump
./install.py
rm -rf autojump

#替换主题色
cp -f ./gianu.zsh-theme ~/.oh-my-zsh/themes/gianu.zsh-theme

#替换zshrc文件
cp -f ./zshrc ~/.zshrc