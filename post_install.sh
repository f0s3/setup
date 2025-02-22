#!/bin/zsh

############################
# Install yay (AUR helper) #
############################
if [[ 'which yay' =~ 'not found' ]]; then
    git clone https://aur.archlinux.org/yay.git
    cd yay || exit
    makepkg -si --noconfirm
    cd .. && rm -rf yay
fi

########################
# Install AUR packages #
########################
yay -S --noconfirm xkblayout-state nvm bun-bin

###############################
# Install i3-workspace-groups #
###############################
pipx install i3-workspace-groups

###############
# Install nvm #
# #############
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

####################
# Install dotfiles #
####################
rm -rf $HOME/dotfiles
rm -rf $HOME/.config/i3/config && rm -rf $HOME/.zprofile && rm -rf $HOME/.zshrc
git clone https://github.com/f0s3/dotfiles $HOME/dotfiles && cd $HOME/dotfiles && stow .
git remote set-url origin git@github.com:f0s3/dotfiles

###########################################
# Install zsh with oh-my-zsh and starship #
###########################################
chsh -s $(which zsh) $USER

RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/jirutka/zsh-shift-select $HOME/.config/zsh/plugins/zsh-shift-select
git clone https://github.com/unixorn/fzf-zsh-plugin $HOME/.config/zsh/plugins/fzf-zsh-plugin
git clone https://github.com/z-shell/zsh-eza $HOME/.config/zsh/plugins/zsh-eza

#################################
# Countdown and optional reboot #
#################################
echo "The system will reboot in 10 seconds. Press Ctrl+C to cancel."
for i in {10..1}; do
    echo "$i"
    sleep 1
done

echo "Rebooting now..."
sudo reboot

##################################### DONE LINE #####################################

# TODO: move what's below into a separate script file.

##################################
# TODO: automate adding ssh keys #
##################################

# TODO: add proton pass installation
# TODO: add brave installation
#################################
# Install optional applications #
#################################
# yay -S slack-desktop --noconfirm
# yay -S telegram-desktop --noconfirm
# yay -S webstorm --noconfirm
# yay -S visual-studio-code-bin --noconfirm
# yay -S pycharm --noconfirm
# yay -S spotify --noconfirm
# sudo pacman -S lightdm lightdm-mini-greeter --noconfirm
# sudo pacman -S network-manager-applet --noconfirm
# sudo pacman -S steam --noconfirm

#####################################
# Install Docker and Docker Compose #
#####################################
# sudo pacman -S docker docker-compose --noconfirm
# sudo systemctl enable docker --now
# sudo usermod -aG docker $USER

#####################################
# Enable LightDM and NetworkManager #
#####################################
# sudo systemctl enable lightdm.service --now
# sudo systemctl enable NetworkManager --now

# Reboot the system (optional)
# echo "Installation complete. It's recommended to reboot your system."
