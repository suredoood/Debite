sudo apt update && sudo apt upgrade

sudo apt install -y neofetch vim python3 python3-pip wget curl htop btop flatpak steam firefox

#### Add flathub to flatpak

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#### Install Spotify

sudo flatpak install flathub com.spotify.Client

### Install Signal Desktop

sudo flatpak install flathub org.signal.Signal

#### Install Discord

sudo flatpak install flathub com.discordapp.Discord

#### Install Grub Customizer

sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer

echo "You will now be prompted about installing several programs, these were originally for Shervin. If you don't know what they are, feel free to deny all of them. I won't take it personally, I promise."

### Prompt for installing rclone, one-liner from https://rclone.org/install/#linux, prompt from https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
echo
echo
read -p "Do you want to install rclone? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo -v ; curl https://rclone.org/install.sh | sudo bash
fi

echo
echo
read -p "Do you want to install zotero? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    curl -sL https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
    sudo apt update
    sudo apt install zotero
fi
