
themes=$HOME/.themes

if [ ! -d $themes ] then
    mkdir $themes
fi

dotfiles_install_component .gtkrc-2.0 $HOME/
