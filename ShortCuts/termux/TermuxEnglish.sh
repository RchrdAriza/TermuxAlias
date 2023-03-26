#!/bin/bash
#!/bin/zsh



bashEnglishtm() { 

echo "
# Alias to install packages with apt-get
alias inst='apt-get install'

# Alias to uninstall packages with apt-get
alias unin='apt-get autoremove'

# Alias to update packages with apt-get
alias updat='apt-get update && apt-get upgrade -y'

# Alias to exit the terminal session
alias ex='exit'

# Alias to start a VNC server
alias vncs='vncserver'

# Alias to stop a VNC server
alias vncst='vncserver -kill :1'

# Alias to list files with detailed permissions
alias ll='ls -l'

# Alias to list all files, including hidden ones
alias la='ls -la'

# Alias to show the disk usage of files in the current directory
alias duh='du -h .'

# Alias to delete directories
alias rmf='rm -rf'

# Alias to copy files
alias cpv='cp -v'

# Alias to create and change to a directory
alias mcd='mkdir -p && cd'

# Alias to go back one directory
alias up='cd ..'

# Alias to search for files with grep
alias gre='grep --color=auto'

# Alias to show command history
alias h='history'

# Alias to search for files with a specific name
alias f='find . -name'

# Alias to extract files
alias ext='tar -zxvf'

# Alias to clear the terminal screen
alias cl='clear'

# Alias to show running processes
alias psa='ps aux'

# Alias to show the size of files and directories in the current directory
alias d='du -h --max-depth=1'

# Alias to make a file executable
alias xx='chmod +x'

# Alias to show free disk space
alias dfh='df -h'

# Alias to search and replace text in files
alias rep='sed -i'

# Alias to show the contents of a file with line numbers
alias catn='cat -n'

# Alias to show the Linux kernel version
alias k='uname -r''

# Alias to create an empty file with a specific name and edit it in nano
alias touchn='touch && nano'

# Alias to show memory usage
alias mem='free -h'

# Alias to search command history
alias sh='history | grep'

# Alias to show file contents in a paged manner
alias pag='less'
" >> .bashrc
}

zhsEnglishtm(){
	echo "# Alias to install packages with apt-get
alias inst='apt-get install'

# Alias to uninstall packages with apt-get
alias unin='apt-get autoremove'

# Alias to update packages with apt-get
alias updat='apt-get update && apt-get upgrade -y'

# Alias to exit the terminal session
alias ex='exit'

# Alias to start a VNC server
alias vncs='vncserver'

# Alias to stop a VNC server
alias vncst='vncserver -kill :1'

# Alias to list files with detailed permissions
alias ll='ls -l'

# Alias to list all files, including hidden ones
alias la='ls -la'

# Alias to show the disk usage of files in the current directory
alias duh='du -h .'

# Alias to delete directories
alias rmf='rm -rf'

# Alias to copy files
alias cpv='cp -v'

# Alias to create and change to a directory
alias mcd='mkdir -p && cd'

# Alias to go back one directory
alias up='cd ..'

# Alias to search for files with grep
alias gre='grep --color=auto'

# Alias to show command history
alias h='history'

# Alias to search for files with a specific name
alias f='find . -name'

# Alias to extract files
alias ext='tar -zxvf'

# Alias to clear the terminal screen
alias cl='clear'

# Alias to show running processes
alias psa='ps aux'

# Alias to show the size of files and directories in the current directory
alias d='du -h --max-depth=1'

# Alias to make a file executable
alias xx='chmod +x'

# Alias to show free disk space
alias dfh='df -h'

# Alias to search and replace text in files
alias rep='sed -i'

# Alias to show the contents of a file with line numbers
alias catn='cat -n'

# Alias to show the Linux kernel version
alias k='uname -r'

# Alias to create an empty file with a specific name and edit it in nano
alias touchn='touch && nano'

# Alias to show memory usage
alias mem='free -h'

# Alias to search command history
alias sh='history | grep'

# Alias to show file contents in a paged manner
alias pag='less'" >> .zshrc 
}