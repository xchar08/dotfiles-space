#!/bin/bash

alias ls='ls -lah --color=auto'
alias ud='doas emerge --sync && doas emerge --ask net-im/discord'
alias us='doas emerge --sync && doas emerge -auDN world && doas dispatch-conf && doas emerge -auDN world && doas emerge --depclean && doas emerge -1 @module-rebuild && doas grub-mkconfig -o /boot/grub/grub.cfg'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue) <%an >%Creset' --abbrev-commit --date=relative"
alias atree='tree --metafirst -pAuDts'
alias .git="cd ~/.github/"
alias dwmedit="sudo nvim /etc/portage/savedconfig/x11-wm/dwm-6.4.h && sudo emerge --ask dwm"
alias gcc="gcc -Og -ggdb3 -std=c99"
alias valgrind="valgrind -s --show-leak-kinds=all --track-origins=yes --leak-check=full"
alias battery="acpi -i"
alias brightness="xrandr --output eDP1 --brightness"
alias sudo="doas"
nitch
export "$(dbus-launch)"
cd ~/Desktop || exit
eval "$(starship init bash)"
complete -cf doas

fish
