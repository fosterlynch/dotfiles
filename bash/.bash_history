exit
dzdo apt-get install build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
dzdo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
lsb_release -a
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
curl -fsSL https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_manuelschneid3r.gpg > /dev/null
sudo apt update
alias
sudo apt install albert
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
brew
ls 
ls -al
cat .profile
ls -al | grep .linuxbrew
ls -al | grep .
nano .profile
sudo apt install gnome-shell-extension-autohidetopbar
ls .local/share/
ls .local/share/gnome-shell/
cd ~/.local/share/gnome-shell/extensions/
apt install zsh
$ echo "deb https://apt.enpass.io/  stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
echo "deb https://apt.enpass.io/  stable main" | sudo tee /etc/apt/sources.list.d/enpass.list
$ wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc
wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo tee /etc/apt/trusted.gpg.d/enpass.asc
sudo apt-get update
sudo apt-get install enpass
git clone https://github.com/fosterlynch/dotfiles.git
ls 
ls dotfiles/
ls dotfiles/shell/
stow
apt install stow
sudo apt install stow
stow --help
ls
ls dotfiles/
ls dotfiles/zsh/
ls dotfiles/zsh/ -al
cat dotfiles/zsh/.zshrc 
sudo apt install zsh
zsh
cat .bashrc 
ls
ls dotfiles/
ls dotfiles/shell/
docker
zsh
cp ./dotfiles/shell/shell_theme.dconf /usr/share/themes/
sudo cp ./dotfiles/shell/shell_theme.dconf /usr/share/themes/
ls -al
cat .zshrc 
cp ./dotfiles/zsh/.zshrc ./
cat .zshrc 
zsh
ls 
ls -al
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh
bash
cat .bashrc 
zsh
zsh
exit
