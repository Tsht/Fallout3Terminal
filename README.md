# Fallout terminal

Dépendances, à installer sur le raspberry :
Installer members (pour lister les utilisateurs d'un groupe)
sudo apt install members
Installer usbmount (pour pouvoir monter une clef usb automatiquement)
sudo apt install usbmount
Modifier les droits pour les clef usb :
sudo vi /lib/systemd/system/systemd-udevd.service
\PrivateMounts=no

Vérifier que le service est bien démarré

Installer python (nécessaire pour le jeu de hack) :
sudo apt install python3-pip
sudo apt install libasound2-dev
sudo pip3 install simpleaudio

Configurer l'auto login (comme ça, on pourra démarrer directement sur l'interface au démarrage):
raspi-config

Editer et installer les membres :
éditer users.txt puis lancer createuser.sh

Commandes en plus :
trap SIGINT
tput -setaf 2
set AUDIODRIVER=alsa

le trap permet d'interdire le CTRL-C, le setaf met la couleur en vert, et l'audiodriver est nécessaire pour les sons.

Editer le fichier terminalscript pour mettre le bon chemin de clef.
Il faut ensuite créer les utilisateurs : éditer le fichier users.tst pour mettre la liste des utilisateurs, et lancer le script createuser.sh

Ensuite lancer terminalscript
L'édition du fichier banniere.txt affiche le contenu sur le terminal en temps réel.

Pour les hacks, il faut que la clef contienne le fichier "hack". Dedans, il faut indiquer le nombre de hack dispo.
Ce nombre est réduit de 1 dès qu'un hack est tenté. S'il arrive à 0, aucun hack n'est tenté.
La vérification de la clef ne se fait qu'à l'écran de login.
