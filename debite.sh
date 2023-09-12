sudo apt update && sudo apt upgrade

sudo apt install -y neofetch vim python3 python3-pip wget curl btop flatpak steam firefox

#### Add flathub to flatpak

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#### Install Spotify

sudo flatpak install flathub com.spotify.Client

### Install Signal Desktop

sudo flatpak install flathub org.signal.Signal

#### Install Discord

sudo flatpak install flathub com.discordapp.Discord


### Prompt for installing rclone, one-liner from https://rclone.org/install/#linux, prompt from https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
echo
echo
read -p "Do you want to install rclone? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo -v ; curl https://rclone.org/install.sh | sudo bash
fi
