#!/bin/bash
#/bin/zsh

source ShortCuts/debian_ubuntu/spanishSC.sh
source ShortCuts/debian_ubuntu/englishSC.sh
source ShortCuts/termux/TermuxSpanishSC.sh
source ShortCuts/termux/TermuxEnglish.sh


lang=$(dialog --clear --backtitle "Lenguaje/Language" \
	  --title "Elige tu idioma/Choose your Language" \
	  --menu "escoge tu idioma/Choose your Language" 10 50 2 \
	  1 "ingles/english" \
	  2 "español/Spanish" \
	  3>&1 1>&2 2>&3
)

español() {

distroES=$(dialog --clear --backtitle "Entorno" \
		--title "Elige tu Entorno" \
		--menu "Cual usas actualmente?" 10 40 2 \
		1 "Debian|Ubuntu|kali" \
		2 "Termux" \
		3>&1 1>&2 2>&3

		)
}

english() { 
distroEN=$(dialog --clear --backtitle "Environment" \
		--title "Choose your environment" \
		--menu "Which one do you currently use?" 10 40 2 \
		1 "Debian|Ubuntu|kali" \
		2 "Termux" \
		3>&1 1>&2 2>&3
	)

}

homeES(){
cd $HOME
echo "Analizando el tipo de shell disponible"
shell=$SHELL

#echo -e "${shell} es el tipo"

if [ "$shell" == "/usr/bin/zsh" ]; then

	echo "Su tipo de shell es: ZSH"
	atajoszsh

elif [ "${shell}" == "/usr/bin/bash" ]; then

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

		1) english
			case $distroEN in
				1) 	homeEN
			esac
		;;
		2) español
			case $distroES in
				1) 	homeEN
			esac
		;;
esac