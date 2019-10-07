
doti3=$HOME/.config/i3
fonts=$HOME/.fonts

if [ ! -d $doti3 ]; then
    mkdir $doti3
fi
if [ ! -d $fonts ]; then
    mkdir $fonts
fi

dotfiles_install_package i3 i3status dmenu rofi
dotfiles_install_component config $doti3/config
dotfiles_install_component i3status.conf $doti3/i3status.conf
dotfiles_install_component conky.conf $doti3/conky.conf
dotfiles_install_component fonts $fonts
dotfiles_install_component i3exit $doti3/i3exit
dotfiles_install_component workstation $doti3/workstation
dotfiles_install_component laptop $doti3/laptop
dotfiles_install_component mirror $doti3/mirror


