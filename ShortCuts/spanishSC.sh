#!/bin/bash
#!/bin/zsh


atajosbash() {

echo "alias instalar='sudo apt-get install'
alias desinstalar='sudo apt-get autoremove'
alias actualizar='sudo apt-get update && sudo apt-get upgrade -y'
alias :q='exit'
alias vnc='vncserver'
alias apagar='vncserver -kill :1; exit'
alias xx='chmod +x'" >> .bashrc
}

atajoszsh() {

echo "alias instalar='sudo apt-get install'
alias desinstalar='sudo apt-get autoremove'
alias actualizar='sudo apt-get update && sudo apt-get upgrade -y'
alias :q='exit'
alias vnc='vncserver'
alias apagar='vncserver -kill :1; exit'
alias xx='chmod +x'" >> .zshrc
}
