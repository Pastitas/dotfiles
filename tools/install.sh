#!/bin/bash
###################################################################################################################################
###This simple bash script will work in arch based systems only, and it will try to install everything in the packages_list.txt#### 
###################################################################################################################################
PACKAGES="${DOTFILES_CURRENT_SOURCE_DIR}/package_list.txt"

pacman -Qe | awk '{print $1}' > current_list.txt
diff current_list.txt  $PACKAGES | grep ">" | sed 's/> //g' > diff_list.txt
rm current_list.txt

#Add the blackarch repos and tools
curl -O https://blackarch.org/strap.sh 
chmod +x $HOME/.dotfiles/tools/strap.sh
sudo $HOME/.dotfiles/tools/strap.sh

#change the horrible naming convention
sudo ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules

for x in $(cat diff_list.txt)
do 
   sudo pacman -S $x 
    if [ $? -ne 0 ] 
    then yaourt $x 
    fi 
done

rm diff_list.txt



