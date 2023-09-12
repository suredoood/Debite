sudo apt update && sudo apt upgrade

sudo apt install -y neofetch vim python3 python3-pip wget curl btop flatpak steam

#### Add flathub to flatpak

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#### Install Spotify

sudo flatpak install flathub com.spotify.Client

### Install Signal Desktop

sudo flatpak install flathub org.signal.Signal

#### Install Discord

sudo flatpak install flathub com.discordapp.Discord
