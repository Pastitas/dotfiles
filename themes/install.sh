
themes=$HOME/.themes
icons=$HOME/.icons
wallpapers=/root/Pictures/
lightDM=/etc/lightdm/

if [ ! -d $themes ]; then
    mkdir $themes
fi
if [ ! -d $icons ]; then
    mkdir $icons
fi

dotfiles_install_component .gtkrc-2.0 $HOME/
dotfiles_install_component diehard4 $themes/
dotfiles_install_component Treepata $icons/
dotfiles_install_component wallpapers $wallpapers/
dotfiles_install_component lightdm-gtk-greeter.conf $lightDM/
