#!/bin/bash
###################################################################################################################################
###This simple bash script will work in arch based systems only, and it will try to install everything in the packages_list.txt#### 
###################################################################################################################################
PACKAGES="${DOTFILES_CURRENT_SOURCE_DIR}/package_list.txt"

pacman -Qe | awk '{print $1}' > current_list.txt
diff current_list.txt  $PACKAGES | grep ">" | sed 's/> //g' > diff_list.txt
rm current_list.txt

for x in $(cat diff_list.txt)
do 
   sudo pacman -S $x --noconfirm
    if [ $? -ne 0 ] 
    then yay $x 
    fi 
done

rm diff_list.txt
