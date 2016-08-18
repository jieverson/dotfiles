#! /bin/sh

git pull
echo "git pull"

# ~
ln -sf $(pwd)/xinitrc ~/.xinitrc
echo ".xinitrc symlinked"

ln -sf $(pwd)/Xresources ~/.Xresources
ln -sf $(pwd)/Xresources ~/.Xdefaults
echo ".Xresources symlinked"

ln -sf $(pwd)/zprofile ~/.zprofile
echo ".zprofile symlinked"

ln -sf $(pwd)/zshrc ~/.zshrc
echo ".zshrc symlinked"

ln -sf $(pwd)/gitconfig ~/.gitconfig
echo ".gitconfig symlinked"

ln -sf $(pwd)/fehbg ~/.fehbg
echo ".fehbg symlinked"

ln -sf $(pwd)/vimrc ~/.vimrc
echo ".vimrc symlinked"

ln -sf $(pwd)/wallpaper.png ~/.wallpaper.png
echo "wallpaper symlinked"

# .config
mkdir -p ~/.config

mkdir -p ~/.config/bspwm
ln -sf $(pwd)/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
chmod +x ~/.config/bspwm/bspwmrc
echo "bspwmrc symlinked"

mkdir -p ~/.config/sxhkd
ln -sf $(pwd)/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
echo "sxhkdrc symlinked"

mkdir -p ~/.config/ranger
ln -sf $(pwd)/config/ranger/rc.conf ~/.config/ranger/rc.conf
echo "ranger symlinked"

mkdir -p ~/.config/Code && mkdir -p ~/.config/Code/User
ln -sf $(pwd)/config/Code/User/settings.json ~/.config/Code/User/settings.json
echo "vscode symlinked"

ln -sf $(pwd)/config/bspwm/panel ~/.config/bspwm/panel
ln -sf $(pwd)/config/bspwm/panel_bar ~/.config/bspwm/panel_bar
ln -sf $(pwd)/config/bspwm/panel_colors ~/.config/bspwm/panel_colors
ln -sf $(pwd)/config/bspwm/profile ~/.config/bspwm/profile
chmod +x ~/.config/bspwm/panel
chmod +x ~/.config/bspwm/panel_bar
chmod +x ~/.config/bspwm/panel_colors
chmod +x ~/.config/bspwm/profile
echo "lemonbar symlinked"

# .build
mkdir -p ~/.build
ln -sf $(pwd)/build/clone.sh ~/.build/clone.sh
chmod +x ~/.build/clone.sh
echo ".build symlinked (RUN clone.sh and make all repos)"

# .oh-my-zsh
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
ln -sf $(pwd)/oh-my-zsh/themes/my_robbyrussell.zsh-theme ~/.oh-my-zsh/themes/my_robbyrussell.zsh-theme
echo "oh-my-zsh theme symlinked"

# .scripts
mkdir -p ~/.scripts

ln -sf $(pwd)/scripts/color_test.sh ~/.scripts/color_test.sh
ln -sf $(pwd)/scripts/pacman.sh ~/.scripts/pacman.sh
ln -sf $(pwd)/scripts/space_invaders.sh ~/.scripts/space_invaders.sh
chmod +x ~/.scripts/color_test.sh
chmod +x ~/.scripts/pacman.sh
chmod +x ~/.scripts/space_invaders.sh
echo "color scripts symlinked"

# base folders
mkdir -p ~/pictures
mkdir -p ~/pictures/screenshots
mkdir -p ~/pictures/wallpapers
mkdir -p ~/projects
echo "create base folders"

echo "DONE"
