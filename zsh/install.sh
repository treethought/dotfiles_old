
if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	echo "Installing zsh"
	apt install zsh -y
fi
chsh -s $(which zsh)

echo installing "Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# install spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# install nvm/node/npm via zsh plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

#pipenv plugin
git clone https://github.com/gangleri/pipenv.git ~/.oh-my-zsh/custom/plugins/pipenv
