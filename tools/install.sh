#!/bin/bash
###################################################################################################################################
###This simple bash script will work in arch based systems only, and it will try to install everything in the packages_list.txt#### 
###################################################################################################################################

pacman -Qe | awk '{print $1}' > current_list.txt
diff current_list.txt package_list.txt | grep ">" | sed 's/> //g' > diff_list.txt

for x in $(cat diff_list.txt)
do 
    sudo pacman -S $x 
    if [ $? -ne 0 ] 
    then yaourt $x 
    fi
done

