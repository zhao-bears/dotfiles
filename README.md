# dotfiles

## What I use

- OS • Win11 + Fedora Linux
- Window Manager • swaywm
- Status Bar • waybar
- Shell • Zsh + oh-my-zsh
- Terminal Multiplexer • tmux
- Terminal • foot
- Text Editor • Neovim

### how to use

```
git clone https://github.com/agentzhao/dotfiles.git
cd ~/dotfiles
stow -nvt ~ .
stow -vt ~ .
stow -Dvt ~ .
```

### Docker Images

```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

```
docker pull agentzhao/ctf-box
```

```
docker pull agentzhao/arch-linux
```

```
docker pull agentzhao/ubuntu
```

### Brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Github cli Debian, Ubuntu Linux, Raspberry Pi OS (apt)

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

### Powershell copy to $profile

```
C:\Users\zhao\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

### Get all saved wifi network and passwords

```
(netsh wlan show profiles) | Select-String “\:(.+)$” | %{$name=$_.Matches.Groups[1].Value.Trim(); $_} | %{(netsh wlan show profile name=”$name” key=clear)} | Select-String “Key Content\W+\:(.+)$” | %{$pass=$_.Matches.Groups[1].Value.Trim(); $_} | %{[PSCustomObject]@{ PROFILE_NAME=$name;PASSWORD=$pass }} | Format-Table -AutoSize
```

### python

```
cd ~
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9 -y
sudo apt install python3-pip -y
pip3 install pynvim

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 110
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 100
sudo update-alternatives --config python3
sudo update-alternatives --remove python3 /usr/bin/python3.10
```

### wsl2 backup and import

```
wsl -l -v
wsl --export Ubuntu-22.04 ubuntubackup.tar
wsl --import Ubuntu-22.04 C:\Users\user\AppData\Local\Packages\Ubuntu C:\Users\user\Documents\ubuntubackup.tar
```

### wsl

```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
```

### Target packages ... is configured multiple times

https://askubuntu.com/questions/760896/how-can-i-fix-apt-error-w-target-packages-is-configured-multiple-times

### TIL

- Renumbering windows in tmux: <C-a>:movew -r (move-window renumber)

### gdrive

`brew install gdrive`

### tar files

`tar xzvf file.tar.gz`
