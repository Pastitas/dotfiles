current_dir=${DOTFILES_CURRENT_SOURCE_DIR}
doti3=$HOME/.config/i3
fonts=$HOME/.fonts

if [ ! -d $fonts ]; then
    mkdir $fonts
fi

dotfiles_install_package i3 i3status dmenu rofi
dotfiles_install_component $current_dir $doti3


