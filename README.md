# Fallout terminal

Dépendances :
Installer members
sudo apt install members
Installer usbmount
sudo apt install usbmount
Modifier les droits pour les clef usb :
sudo vi /lib/systemd/system/systemd-udevd.service
\PrivateMounts=no

Installer python :
sudo apt install python3-pip
(sudo apt install libasound2-dev)
sudo pip3 install simpleaudio

Configurer l'auto login :
raspi-config

Editer et installer les membres :
éditer users.txt puis lancer createuser.sh

Commandes en plus :
trap SIGINT
tput -setaf 2
set AUDIODRIVER=alsa

Ensuite lancer terminalscript

