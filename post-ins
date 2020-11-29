#! /bin/sh

## Defining Region and synching it to the system
#ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && hwclock --systohc

## Generating the locale
#locale-gen

## Localization

printf "LANG=en_US.UTF-8\n" > /home/preston/Documents/git/sh/locale/locale.conf

printf "KEYMAP=br-abnt2\n" > /home/preston/Documents/git/sh/locale/vconsole.conf

## Network configuration

read -p "Insert your hostname: " HOSTNAME

printf "$HOSTNAME" > ./host/hostname

printf "127.0.0.1	localhost\n::1		localhost\n127.0.1.1	$HOSTNAME.localdomain	$HOSTNAME" > ./host/hosts

## Installing some basic programs

pacman -S dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog sudo vim ntfs-3g man-db man-pages

## Creating a new user

## Initramfs

mkinitcpio -P

## Root password

echo "Define your root password"

passwd

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
