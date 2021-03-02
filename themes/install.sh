config=$HOME/.config
nitrogen=$HOME/.config/nitrogen
wallpapers=$HOME/Pictures/Wallpapers
dotThemes=$HOME/.dotfiles/themes


if [ ! -d $nitrogen ]; then
    mkdir $nitrogen
fi
if [ ! -d $config ]; then
    mkdir $config
fi
if [ ! -d $wallpapers]; then
    mkdir $wallpapers
fi


dotfiles_install_package nitrogen
dotfiles_install_package lxappearance

dotfiles_install_component wallpapers $wallpapers
dotfiles_install_component .gtkrc-2.0 $HOME/.gtkrc-2.0
dotfiles_install_component .xinitrc $HOME/.xinitrc
dotfiles_install_component bg-saved.cfg $nitrogen/bg-saved.cfg
dotfiles_install_component nitrogen.cfg $nitrogen/nitrogen.cfg
