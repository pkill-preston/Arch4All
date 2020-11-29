#! /bin/sh

loadkeys br-abnt2

$(tput setab cyan) && echo -e "\nThis program will help you to install Arch Linux, with its base programs to operate (GUI not includedi)" && tput sg0

echo -e "\nDo you know your boot mode? It appears when you boot-up from your bootable media!\n"

echo -e "Insert 1 for Legacy mode/BIOS"
echo -e "\nInsert 2 for UEFI/EFI"
echo -e "\nInsert 3 to discover your boot mode\n"

read -p "Insert your answer : " ANSWER

[ "$ANSWER" == '3' ] && echo "If an error appears your screen your boot mood is BIOS, otherwise if files appears is UEFI \n" && ls /sys/firmware/efi/efivars 

[ "$ANSWER" == '1' ] && $BOOT_MODE='BIOS'

[ "$ANSWER" == '2' ] && $BOOT_MODE='UEFI'

echo $BOOT_MODE
