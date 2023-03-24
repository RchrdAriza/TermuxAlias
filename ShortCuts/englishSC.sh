#!/bin/bash
#!/bin/zsh


bashshortcuts() {

echo "alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias up='sudo apt-get update && sudo apt-get upgrade -y'
alias :q='exit'
alias vnc='vncserver'
alias off='vncserver -kill :1; exit'
alias xx='chmod +x'" >> .bashrc
}

zshshortcuts() {

echo "alias installr='sudo apt-get install'
alias remove='sudo apt-get autoremove'
alias up='sudo apt-get update && sudo apt-get upgrade -y'
alias :q='exit'
alias vnc='vncserver'
alias off='vncserver -kill :1; exit'
alias xx='chmod +x'" >> .zshrc
}
