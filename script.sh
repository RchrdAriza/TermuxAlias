#!/bin/bash
#/bin/zsh

source ShortCuts/spanishSC.sh
source ShortCuts/englisSC.sh

cd $HOME
echo "Analizando el tipo de shell disponible"
shell=$SHELL

#echo -e "${shell} es el tipo"

if [ "$shell" == "/usr/bin/zsh" ]; then

	echo "Su tipo de shell es: ZSH"
	

elif [ "${shell}" == "/usr/bin/bash" ]; then

	echo "Su tipo de shell es: BASH"
	bashshortcuts
fi
