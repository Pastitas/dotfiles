

themes=$HOME/.themes
icons=$HOME/.icons
pixmaps=/usr/share/pixmaps
lightDM=/etc/lightdm
config=$home/.config
nitrogen=$HOME/.config/nitrogen
wallpapers=$HOME/.dotfiles/themes/wallpapers



if [ ! -d $themes ]; then
    mkdir $themes
fi
if [ ! -d $icons ]; then
    mkdir $icons
fi
if [ ! -d $nitrogen ]; then
    mkdir -r $nitrogen
fi
if [ ! -d $config ]; then
    mkdir -r $config
fi
sudo cp -r $wallpapers $pixmaps/
sudo cp  $HOME/.dotfiles/themes/lightdm-gtk-greeter.conf $lightdm/

dotfiles_install_package nitrogen lightdm

dotfiles_install_component .gtkrc-2.0 $HOME/.gtkrc-2.0
dotfiles_install_component .xinitrc $HOME/.xinitrc
dotfiles_install_component diehard4 $themes/diehard4
dotfiles_install_component Treepata $icons/Treepata
dotfiles_install_component bg-saved.cfg $nitrogen/bg-saved.cfg
