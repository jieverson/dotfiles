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

ln -sf $(pwd)/vimrc ~/.vimrc
echo ".vimrc symlinked"

ln -sf $(pwd)/wallpaper.png ~/.wallpaper.png
echo "wallpaper symlinked"

ln -sf $(pwd)/asoundrc ~/.asoundrc
echo ".asoundrc symlinked"

# .config
mkdir -p ~/.config

mkdir -p ~/.config/bspwm
ln -sf $(pwd)/config/bspwm/bspwmrc ~/.config/bspwm/bspwmrc
echo "bspwmrc symlinked"

mkdir -p ~/.config/sxhkd
ln -sf $(pwd)/config/sxhkd/sxhkdrc ~/.config/sxhkd/sxhkdrc
echo "sxhkdrc symlinked"

mkdir -p ~/.config/lemonbuddy
ln -sf $(pwd)/config/lemonbuddy/config ~/.config/lemonbuddy/config
ln -sf $(pwd)/config/lemonbuddy/lang.sh ~/.config/lemonbuddy/lang.sh
echo "lemonbuddy symlinked"

mkdir -p ~/.config/ranger
ln -sf $(pwd)/config/ranger/rc.conf ~/.config/ranger/rc.conf
echo "ranger symlinked"

mkdir -p ~/.config/Code && mkdir -p ~/.config/Code/User
ln -sf $(pwd)/config/Code/User/settings.json ~/.config/Code/User/settings.json
echo "vscode symlinked"

#ln -sf $(pwd)/config/bspwm/panel ~/.config/bspwm/panel
#ln -sf $(pwd)/config/bspwm/panel_bar ~/.config/bspwm/panel_bar
#ln -sf $(pwd)/config/bspwm/panel_colors ~/.config/bspwm/panel_colors
#ln -sf $(pwd)/config/bspwm/profile ~/.config/bspwm/profile
#echo "lemonbar symlinked"

# gtk
ln -sf $(pwd)/gtkrc-2.0 ~/.gtkrc-2.0
echo "GTK-2.0 symlinked"

mkdir -p ~/.config/gtk-3.0
ln -sf $(pwd)/config/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini
echo "GTK-3.0 symlinked"

# .build
mkdir -p ~/.build
ln -sf $(pwd)/build/clone.sh ~/.build/clone.sh
echo ".build symlinked (RUN clone.sh and make all repos)"

# .oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo "oh my zsh configured!"

mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
ln -sf $(pwd)/oh-my-zsh/themes/my_robbyrussell.zsh-theme ~/.oh-my-zsh/themes/my_robbyrussell.zsh-theme
echo "oh-my-zsh theme symlinked"

# .scripts
mkdir -p ~/.scripts

ln -sf $(pwd)/scripts/* ~/.scripts
echo "scripts symlinked"

# base folders
mkdir -p ~/pictures
mkdir -p ~/pictures/screenshots
mkdir -p ~/pictures/wallpapers
mkdir -p ~/projects
echo "create base folders"

echo "DONE"
