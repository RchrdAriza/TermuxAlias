#!/bin/bash
#!/bin/zsh

rojo="\e[31m"
#amarillo="\e[33m"
verde='\e[32m'
#azul="\e[34m"
fin="\e[0m"

source ShortCuts/debian_ubuntu/spanishSC.sh
source ShortCuts/debian_ubuntu/englishSC.sh
source ShortCuts/termux/TermuxSpanishSC.sh
source ShortCuts/termux/TermuxEnglish.sh

clear

echo -e "${rojo}intalando paquetes necesarios"
echo -e "installing necessary packages${fin}"

sleep 2

apt install dialog -y

lang=$(
	dialog --clear --backtitle "Lenguaje/Language" \
		--title "Elige tu idioma/Choose your Language" \
		--menu "escoge tu idioma/Choose your Language" 10 50 2 \
		1 "ingles/english" \
		2 "español/Spanish" \
		3>&1 1>&2 2>&3
	sleep 2
)

español() {

	distroES=$(
		dialog --clear --backtitle "Entorno" \
			--title "Elige tu Entorno" \
			--menu "Cual utiliza actualmente" 10 40 2 \
			1 "Debian|Ubuntu|kali" \
			2 "Termux" \
			3>&1 1>&2 2>&3
		sleep 2
	)
}

english() {
	distroEN=$(
		dialog --clear --backtitle "Environment" \
			--title "Choose your environment" \
			--menu "Which one do you currently use?" 10 40 2 \
			1 "Debian|Ubuntu|kali" \
			2 "Termux" \
			3>&1 1>&2 2>&3
		sleep 2
	)

}

homeES() {
	clear

	cd $HOME

	echo -e "${rojo}Analizando el tipo de shell disponible${fin}"

	sleep 2

	echo "..."

	sleep 3

	shell=${SHELL: -4}

	if [ "$shell" == "/zsh" ]; then

		echo -e "Su tipo de shell es: ${verde}ZSH${fin}"
		sleep 2
		atajoszsh

	elif [ "$shell" == "bash" ]; then
		echo -e "Su tipo de shell es: ${verde}BASH${fin}"
		sleep 2
		atajosbash
	fi
}

homeEN() {
	clear

	cd $HOME

	echo "Analyzing available shell type"

	sleep 2

	echo "..."

	sleep 3

	shell=${SHELL: -4}

	#echo -e "${shell} is the type"

	if [ "$shell" == "/zsh" ]; then
		echo -e "Your shell type is: ${verde}ZSH${fin}"
		sleep 2
		zshshortcuts

	elif [ "$shell" == "bash" ]; then
		echo -e "Your shell type is: ${verde}BASH${fin}"
		sleep 2
		bashshortcuts
	fi
}

termuxmhomeES() {
	clear

	cd $HOME

	echo "Analizando el tipo de shell disponible"

	sleep 2

	echo "..."

	sleep 3

	shell=${SHELL: -4}

	#echo -e "${shell} es el tipo"

	if [ "$shell" == "/zsh" ]; then

		echo -e "Su tipo de shell es: ${verde}ZSH${fin}"
		sleep 2
		zshSpanishSC

	elif [ "$shell" == "bash" ]; then

		echo -e "Su tipo de shell es: ${verde}BASH${fin}"
		sleep 2
		bashSpanishSC
	fi
}

termuxhomeEN() {
	clear

	cd $HOME

	echo "Analyzing available shell type"

	sleep 2

	echo "..."

	sleep 2

	shell=${SHELL: -4}

	#echo -e "${shell} is the type"

	if [ "$shell" == "/zsh" ]; then

		echo -e "Your shell type is: ${verde}ZSH${fin}"
		sleep 2
		zhsEnglishtm

	elif [ "$shell" == "bash" ]; then

		echo -e "Your shell type is: ${verde}BASH${fin}"
		sleep 2
		bashSpanishSC

	fi
}

case $lang in

1)
	english
	case $distroEN in
	1) homeEN ;;
	2) termuxhomeEN ;;
	esac
	;;
2)
	español
	case $distroES in
	1) homeES ;;
	2) termuxmhomeES ;;
	esac
	;;
esac
