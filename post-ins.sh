#! /bin/sh

## Defining Region and synching it to the system

<<comment

Africa
America
Antarctica
Arctic
Asia
Atlantic
Australia
Brazil
Canada
Chile
Europe
Indian
Mexico
Pacific
US
comment

## Generating the locale

locale-gen

## Localization

hwclock --systohc

echo "LANG=en_US.UTF-8\n" > /etc/locale.conf ; echo "KEYMAP=br-abnt2\n" > /etc/vconsole.conf

## Network configuration

read -p "Insert your hostname: " HOSTNAME

echo "$HOSTNAME" > /etc/hostname

echo -e  "127.0.0.1       localhost\n::1             localhost\n127.0.1.1       $HOSTNAME.localdomain   $HOSTNAME" > ./pinto

## Installing some basic programs

pacman -S dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog sudo vim ntfs-3g man-db man-pages noto-fonts-cjk noto-fonts-emoji noto-fonts xdg-user-dir xdg-user-dirs-gtk 

## Creating a new user

read -p "Insert your Full Name" $USERNAME

useradd -m -g users -G wheel $USERNAME

mkdir /home/$USERNAME

$USERNAME ALL=(ALL) ALL

usermod -d /home/$USERNAME -m $USERNAME

## Initramfs

mkinitcpio -P

## Root password

echo "Define your root password"

passwd

<<future
## Grub Installation

# BIOS Mode

[ [ "BOOT_MODE" == 'BIOS' ] ] pacman -S grub 

grub-install --target=i386-pc /dev/sdX

cp /usr/share/locale/en@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo

grub-mkconfig -o /boot/grub/grub.cfg

## UEFI Mode

[ [ "BOOT_MODE" == 'UEFI' ] ] pacman -S grub-efi-x86_64 efibootmgr

grub-install --target=x86_64-efi --efi-directory=esp --bootloader-id=GRUBX64

cp /usr/share/locale/en@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo

grub-mkconfig -o /boot/grub/grub.cfg
future
