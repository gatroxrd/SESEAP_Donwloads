#!/bin/bash
#USTPD
#gatrixrd@gmail.com


_NodeJs()
{
		sudo apt-get remove nodejs npm
		sudo rm /usr/local/bin/node
		sudo rm /usr/local/bin/npm
		sudo rm -rf /etc/nodejs
		sudo rm -rf ~/.npm
		sudo rm -rf ~/.cache/node-gyp
		nvm uninstall
		#------------------------------------------
                #Instalando NodeJs
                clear
                sudo curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
                sudo apt update
                sudo apt install nodejs
                sudo wget https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.gz
                sudo tar -xf node-v18.12.1-linux-x64.tar.gz
                sudo sudo mv node-v18.12.1-linux-x64/* /usr/local/bin
                #------------------
                #sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh 
                ruta_script=$(readlink -f “$0”)
                sudo wget -O  ruta_script  https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh
                cd "$(dirname "$ruta_script")"
                sudo chmod +u+x ruta_script
                sudo ./ruta_script
                #- - - - - - - - - -
                nvm install 18.12.1
                echo -e " \033[33mNodeJs 18 instalado!\033[0m."
                #echo "NodeJs 18 instalado!"

}

_NodeJs
