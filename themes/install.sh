
themes=$HOME/.themes
icons=$HOME/.icons
pixmaps=/usr/share/pixmaps
lightDM=/etc/lightdm/

if [ ! -d $themes ]; then
    mkdir $themes
fi
if [ ! -d $icons ]; then
    mkdir $icons
fi

dotfiles_install_component .gtkrc-2.0 $HOME/
dotfiles_install_component .xinitrc $HOME/
dotfiles_install_component diehard4 $themes/
dotfiles_install_component Treepata $icons/
dotfiles_install_component wallpapers $pixmaps/
dotfiles_install_component lightdm-gtk-greeter.conf $lightDM/
