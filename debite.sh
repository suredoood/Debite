
sudo apt update && sudo apt upgrade

sudo apt install -y -m neofetch vim python3 python3-pip wget curl htop btop flatpak

#### Add flathub to flatpak

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#### Install Spotify

sudo flatpak install flathub com.spotify.Client

### Install Signal Desktop

sudo flatpak install flathub org.signal.Signal

#### Install Discord

sudo flatpak install flathub com.discordapp.Discord

#### Install Steam

flatpak install flathub com.valvesoftware.Steam

#### Install flatseal (GUI for managing flathub permissions)

flatpak install flathub com.github.tchx84.Flatseal

### Configure Flatpak to have access to icons and themes
flatpak --user override --filesystem=/home/$USER/.icons/:ro
flatpak --user override --filesystem=/usr/share/icons/:ro
flatpak --user override --filesystem=/home/$USER/.themes/:ro

#### Install Grub Customizer (removed for now)

#sudo add-apt-repository ppa:danielrichter2007/grub-customizer
#sudo apt update
#sudo apt install grub-customizer


echo
echo
read -p "Do you want to install nvidia drivers? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
    sudo apt update
    sudo apt install -y -m nvidia-driver firmware-misc-nonfree
fi

echo
echo
read -p "Do you want to install flux (blue light filter)? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    #instructions from xflux-gui github (https://github.com/xflux-gui/fluxgui)
    sudo apt install -y -m python3-pexpect python3-distutils python3-xdg gir1.2-ayatanaappindicator3-0.1 gir1.2-gtk-3.0 redshift
    # Download fluxgui
    cd /tmp
    git clone "https://github.com/xflux-gui/fluxgui.git"
    cd fluxgui
    ./download-xflux.py
    
    # EITHER install system wide
    sudo ./setup.py install --record installed.txt
    
    # EXCLUSIVE OR, install in your home directory
    #
    # The fluxgui program installs
    # into ~/.local/bin, so be sure to add that to your PATH if installing
    # locally. In particular, autostarting fluxgui in Gnome will not work
    # if the locally installed fluxgui is not on your PATH.
    # ./setup.py install --user --record installed.txt
fi

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




