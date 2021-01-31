#!/bin/zsh

omz=~/.oh-my-zsh

printResult(){
    if [[ $1 -eq 0 ]]; then
        echo "$2-------Success"
    else
        echo "$2-------Fail"
    fi
}


echo "oh-my-sh install begin ####"
# install for oh-my-zsh
if [[ ! -e  $omz/oh-my-zsh.sh ]];then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    printResult 0 oh-my-zsh
else
    printResult 0 oh-my-zsh
fi


# install theme for oh-my-zsh
if [[  ! -d  $omz/custom/themes/powerlevel9k ]];then
    git clone https://github.com/bhilburn/powerlevel9k.git $omz/custom/themes/powerlevel9k
    printResult 0 oh-my-zsh-theme
else
    printResult 0 oh-my-zsh-theme
fi


# install plugin
if [[  ! -d  $omz/custom/plugins/zsh-autosuggestions ]];then
    git clone https://github.com/zsh-users/zsh-autosuggestions $omz/custom/plugins/zsh-autosuggestions
    printResult 0 plugin-zutosuggestions
else
    printResult 0 plugin-zutosuggestions
fi

i

cp -r -f ./.zshrc   ~/.zshrc
cp -r -f ./.tmux.conf   ~/.tmux.conf
cp -r -f ./.todo.cfg   ~/.todo.cfg
source ~/.zshrc
echo "oh-my-sh install end ####"


