backgrounds=/usr/share/backgrounds
lightDM=/etc/lightdm
config=$HOME/.config
nitrogen=$HOME/.config/nitrogen
wallpapers=$HOME/.dotfiles/themes/wallpapers
dotThemes=$HOME/.dotfiles/themes


if [ ! -d $nitrogen ]; then
    mkdir $nitrogen
fi
if [ ! -d $config ]; then
    mkdir $config
fi

sudo cp -r  $wallpapers/ $backgrounds
sudo cp -r $dotThemes/lightdm-gtk-greeter.conf $lightdm/


dotfiles_install_package nitrogen lightdm 
yaourt numix-circle 
yaourt arc-gtk

dotfiles_install_component .gtkrc-2.0 $HOME/.gtkrc-2.0
dotfiles_install_component .xinitrc $HOME/.xinitrc
dotfiles_install_component bg-saved.cfg $nitrogen/bg-saved.cfg
