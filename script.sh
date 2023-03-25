#!/bin/bash
#/bin/zsh

source ShortCuts/spanishSC.sh
source ShortCuts/englishSC.sh

lang=$(   dialog --clear --backtitle "Lenguaje/Language" \
	  --title "Elige tu idioma" \
	  --menu "escoge tu idioma" 10 50 2 \
	  1 "Español" \
	  2 "Ingles" \
	  3>&1 1>&2 2>&3
)

#case $lang in
#                1) homeES;;
#                2) homeEN;;

#esac

homeES(){
cd $HOME
echo "Analizando el tipo de shell disponible"
shell=$SHELL

echo -e "${shell} es el tipo"

if [ "$shell" == "/usr/bin/zsh" ] || [ "$shell" == "/bin/zhs" ]; then

	echo "Su tipo de shell es: ZSH"
	atajoszsh

elif [ "${shell}" == "/usr/bin/bash" ] || [ "$shell" == "/bin/bash" ]; then

	echo "Su tipo de shell es: BASH"
	atajosbash
fi
}

homeEN(){
cd $HOME
echo "Analyzing available shell type"
shell=$SHELL

#echo -e "${shell} is the type"

if [ "$shell" == "/usr/bin/zsh" ]; then
    echo "Your shell type is: ZSH"
	zshshortcuts

elif [ "${shell}" == "/usr/bin/bash" ]; then
    echo "Your shell type is: BASH"
    bashshortcuts
fi
}



case $lang in
		1) homeES;;
		2) homeEN;;

esac
