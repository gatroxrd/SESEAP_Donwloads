#!/bin/bash
#USTPD
#gatrixrd@gmail.com

_PostgreSQL()
{

		#Instalando PostGreSQL 
		#Fuente :https://www.cherryservers.com/blog/how-to-install-and-setup-postgresql-server-on-ubuntu-20-04
		sudo apt update
		echo "Instala PostGreSQL "
		sudo apt install wget ca-certificates
		wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
		sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
		sudo apt update
		apt install postgresql postgresql-contrib
			clear
		echo "PostGreSQL instalado!"
		#service postgresql status
		sudo apt  install postgresql-client
		echo -e " \033[33mPostgreSQL 16 instalado!\033[0m."

	#Instalando PostGreSQL 10
}

_MongoDB()
{

		#Instalando MongoDB 
		#Fuente: https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-from-the-default-apt-repositories-on-ubuntu-20-04

			clear
			echo "Instalando MongoDB"
		#- - - - - - - - - - - - - - - - - - - -
		sudo curl -fsSL https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
		echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
		sudo apt update
		sudo apt  install mongodb-org
		#- - - - - - - - - - - - - - - - - - - -
		sudo systemctl start mongod.service
		sudo systemctl enable mongod.service
		#sudo systemctl status mongod.service	
		sudo ufw allow 27017
		echo -e " \033[33mMongoDB instalado!\033[0m."
		#echo "MongoDb instalado!"

}

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
                nvm install 18.12.1				
                #------------------
                #sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh 
                install.sh=$(readlink -f “$0”)
                sudo wget -O  install.sh  https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh
                cd "$(dirname "$install.sh")"
                sudo chmod +u+x install.sh
                sudo ./install.sh
                #- - - - - - - - - -

				sudo apt install npm
                echo -e " \033[33mNodeJs 18 instalado!\033[0m."
                #echo "NodeJs 18 instalado!"


}

_NodeJs2()
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

_NodeJs3()
{
		sudo apt-get remove nodejs npm
		sudo rm /usr/local/bin/node
		sudo rm /usr/local/bin/npm
		sudo rm -rf /etc/nodejs
		sudo rm -rf ~/.npm
		sudo rm -rf ~/.cache/node-gyp
		nvm uninstall
	#------------------------------------------
	#Instalando Node 18.19.1 - - - - - - - - -  - - - - - - - - - - - - - - - - - - - - - - - -
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
	export NVM_DIR="$HOME/.nvm" [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	nvm install 18.19.1
	node -v
	#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	#Instalando Sequelize 7.0.0
	sudo apt update
	#sudo apt upgrade
	#Opcional sudo apt install nodejs
	#Sugerido como previo actualizar NPM 
	npm install -g npm@10.5.0
	#Instalando el sequelize CLI
	npm install --global sequelize-cli
	# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
	sudp apt update
	#Instalando sequelize ORM
	npm install --global sequelize@6.7.0
	sudo chmod a+x /usr/local/bin/sequelize
	sequelize --version
}

_Nginx()
{

		#Instalación de Ngix
		sudo apt  install nginx
		sudo systemctl enable nginx
		#sudo systemctl status nginx	
		echo -e " \033[33mNginx instalado!\033[0m."
		#echo "Nginx instalado!"

}

_Pm2()
{

		echo "Instalando PM2"
		sudo apt update
		#sudo apt  install nodejs
		#npm install pm2@latest -g
		sudo npm install pm2 -g
		#sudo chmod +x /usr/local/bin/pm2
		echo -e " \033[33mPM2 instalado!\033[0m."
		#echo "PM2 instalado"
}

_VisualCode()
{
		echo "Instalando Visual Code"
		sudo apt update
		sudo apt install apt-transport-https
		wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
		sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
		sudo apt update
		sudo apt install code
		sudo snap install brave
		sudo snap install dbeaver-ce
		sudo apt install expect
		sudo apt install curl
		echo -e " \033[33mVisual Code, DBeaver,  Brave Browser y Expect instalado!\033[0m."

	#echo "Visual Code, DBeaver y Brave Browser instalado!"
}

_Git()
{

		echo "Instalando GIT"
		sudo apt update
		sudo apt install git
		sudo chmod +x /usr/bin/git
		git --version
		echo 'export PATH=$PATH:/usr/bin/git' >> ~/.bashrc
		echo -e " \033[33mGit instalado!\033[0m."
		#echo "GIT instalado!"

}

###########################################################################################################
PostgreSQL()
{
	software="postgresql"

	if apt -q list --installed "$software" >/dev/null; then
	echo "El paquete $software ya está instalado."
	else
		#Instalando PostGreSQL 
		#Fuente :https://www.cherryservers.com/blog/how-to-install-and-setup-postgresql-server-on-ubuntu-20-04
		sudo apt update
		echo "Instala PostGreSQL "
		sudo apt -S install wget ca-certificates
		wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
		sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
		sudo apt update
		apt -S install postgresql postgresql-contrib
			clear
		echo "PostGreSQL instalado!"
		service postgresql status
		sudo apt -S install postgresql-client
		echo -e " \033[33mPostgreSQL 16 instalado!\033[0m."
	fi
	#Instalando PostGreSQL 10
}

MongoDB()
{
	software="mongodb-org"

	if apt -q list --installed "$software" >/dev/null; then
	echo "El paquete $software ya está instalado."
	else
		#Instalando MongoDB 
		#Fuente: https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-from-the-default-apt-repositories-on-ubuntu-20-04

			clear
			echo "Instalando MongoDB"
		#- - - - - - - - - - - - - - - - - - - -
		sudo curl -fsSL https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
		echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
		sudo apt update
		sudo apt -S install mongodb-org
		#- - - - - - - - - - - - - - - - - - - -
		sudo systemctl start mongod.service
		sudo systemctl enable mongod.service
		#sudo systemctl status mongod.service	
		sudo ufw allow 27017
		echo -e " \033[33mMongoDB instalado!\033[0m."
		#echo "MongoDb instalado!"
	fi

}

NodeJs()
{
	software="nodejs"

	if apt -q list --installed "$software" >/dev/null; then
	echo "El paquete $software ya está instalado."
	else
		#Instalando NodeJs
		clear
		sudo curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
		sudo apt update
		sudo apt -S install nodejs
		sudo wget https://nodejs.org/dist/v18.12.1/node-v18.12.1-linux-x64.tar.gz
		sudo tar -xf node-v18.12.1-linux-x64.tar.gz
		sudo sudo mv node-v18.12.1-linux-x64/* /usr/local/bin
		#------------------
		ruta_script=$(readlink -f "$0")
		sudo curl -O ruta_script https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh
		cd ruta_script
		sudo chmod +u+x  install.sh
		sudo ./install.sh
		#- - - - - - - - - -
		nvm install 18.12.1
		
		echo -e " \033[33mNodeJs 18!\033[0m."
		#echo "NodeJs 18 instalado!"
	fi
}

Nginx()
{
	software="nginx"
	if apt -q list --installed "$software" >/dev/null; then
	echo "El paquete $software ya está instalado."
	else
		#Instalación de Ngix
		sudo apt -S install nginx
		sudo systemctl enable nginx
		#sudo systemctl status nginx	
		echo -e " \033[33mNginx instalado!\033[0m."
		#echo "Nginx instalado!"
	fi

}

Pm2()
{
	software="pm2"

	if dpkg -l | grep -q "$software"; then
		echo "El paquete $software ya está instalado."
	else
		echo "Instalando PM2"
		sudo apt update
		sudo apt -S install nodejs
		sudo npm install pm2@latest -g
		sudo chmod +x /usr/local/bin/pm2
		echo -e " \033[33mPM2 instalado!\033[0m."
		#echo "PM2 instalado"
	fi

}

VisualCode()
{
	software="code"

	if apt -q list --installed "$software" >/dev/null; then
		echo "El paquete $software ya está instalado."
	else
		echo "Instalando Visual Code"
		sudo apt update
		sudo apt -S install apt-transport-https
		wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
		sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
		sudo apt update
		sudo apt -S install code
		sudo snap -S install brave
		sudo snap -S install dbeaver-ce
		echo -e " \033[33mVisual Code, DBeaver y Brave Browser instalado!\033[0m."
	fi



	#echo "Visual Code, DBeaver y Brave Browser instalado!"
}

Git()
{
	software="git"

	if apt -q list --installed "$software" >/dev/null; then
		echo "El paquete $software ya está instalado."
	else
		echo "Instalando GIT"
		sudo apt update
		sudo apt -S install git
		sudo chmod +x /usr/bin/git
		git --version
		echo 'export PATH=$PATH:/usr/bin/git' >> ~/.bashrc
		echo -e " \033[33mGit instalado!\033[0m."
		#echo "GIT instalado!"
	fi

}

configuraPostgreSQL()
{
	echo "Desea configurar el archivo 'pg_hda.conf' PostgreSQL [S/N]:"
	read respuestaConfiguraPG_HDA_CONF_PostgreSQL16
	if [[ "$respuestaConfiguraPG_HDA_CONF_PostgreSQL16" =~ ^(Si|S|s)$ ]]; then
		cd /etc/postgresql/16/main/
		chmod -R 777 pg_hba.conf
		sudo perl -pi -e "s[local   all             all                                     peer][local   all             all                                     trust]g" pg_hba.conf
		sudo perl -pi -e "s[host    all             all             127.0.0.1/32            scram-sha-256][host    all             all             127.0.0.1/32            trust]g" pg_hba.conf
		sudo perl -pi -e "s[host    replication     all             127.0.0.1/32            scram-sha-256][host    replication     all             127.0.0.1/32            ident]g" pg_hba.conf
		sudo perl -pi -e "s[host    replication     all             ::1/128                 scram-sha-256][host    replication     all             ::1/128                 ident]g" pg_hba.conf
		echo -e " \033[33mArchivo pg_hba.conf ha sido configurado!\033[0m."
	fi
}

reestablecePasswordPostgreSQL()
{
	echo "Desea reestablecer el password de PostgreSQL [S/N]:"
	read respuestaReestablecerPasswordPostgreSQL
	# Validar respuesta de instalación de Visual Code
	if [[ "$respuestaReestablecerPasswordPostgreSQL" =~ ^(Si|S|s)$ ]]; then
			#echo "Se procede a reestablecer la contraseña de PostgreSQL"
			#Estableciendo el nuevo password para controlar PostgreSQL
			sudo passwd postgres
	fi
}

CreacionBaseDatos()
{
	# $1 Usuario de captura
	# $2 Usuario para el dashboard
	# $3 Password a establecer
	recuperaArchivoCredenciales
	uC=$usuarioCaptura
	uD=$usuarioDashboard
	psw=$password

	cd /
	if [ -f "create_edca.exp" ]; then
		# El archivo existe
		echo "El archivo create_edca.exp existe."
		sudo rm -r create_edca.exp
		sudo curl -L -O https://raw.githubusercontent.com/gatroxrd/SESEAP_Donwloads/main/create_edca.exp
	else
		# El archivo no existe
		sudo curl -L -O https://raw.githubusercontent.com/gatroxrd/SESEAP_Donwloads/main/create_edca.exp
	fi
	sudo chmod -R 777 create_edca.exp
	#Configurando el usuario, password y base de datos
   	sudo perl -pi -e "s[uC][$uC]g" create_edca.exp
   	sudo perl -pi -e "s[uD][$uD]g" create_edca.exp
   	sudo perl -pi -e "s[psw][$psw]g" create_edca.exp

	chmod +x create_edca.exp
	expect create_edca.exp

	sudo -u postgres psql -l | awk '{print $1}'
	echo "Base de datos creada y propietarios de los esquema prueba-captura y prueba_dashboard creados"
}


prerrequisitosInstalacion()
{
		_software="curl"
		if apt -q list --installed "$_software" >/dev/null; then
			echo "El paquete $_software ya está instalado."
		else
			sudo apt install curl	
		fi

		echo "Desea instalar Todos los prerequisitos (T) o uno por uno (U) [T/t/U/u]:"
		read respuestaTodosUnoxUno
		# Validar respuesta de instalación de todo el software de una vez o parte por parte
		if [[ "$respuestaTodosUnoxUno" =~ ^(U|u)$ ]]; then
					echo -e "\033[31m#####################################################################\033[0m"
					echo -e "\033[31m########## INSTALACIÓN 1 x 1 SOFTWARE REQUERIDO INSTALADO ###########\033[0m"
					echo -e "\033[31m#####################################################################\033[0m"		
					echo "Desea instalar Visual Code [S/N]:"
					read respuestaVisualCode
					# Validar respuesta de instalación de Visual Code
					if [[ "$respuestaVisualCode" =~ ^(Si|S|s)$ ]]; then
								echo "Se procede a instalar Visual Code"
								VisualCode
					fi
					#----------------------------------------------------------------
					echo "Desea instalar PostgreSQL [S/N]:"
					read respuestaPostgreSQL
					# Validar respuesta de instalación del PostgreSQL
					if [[ "$respuestaPostgreSQL" =~ ^(Si|S|s)$ ]]; then
						echo "Se procede a instalar PostgreSQL"
						PostgreSQL
					fi
					#----------------------------------------------------------------
					echo "Desea instalar MongoDB [S/N]:"
					read respuestaMongoDB
					# Validar respuesta de instalación de MongoDB
					if [[ "$respuestaMongoDB" =~ ^(Si|S|s)$ ]]; then
							echo "Se procede a instalar MongoDB"
							MongoDB
					fi
					#----------------------------------------------------------------
					echo "Desea instalar NodeJs [S/N]:"
					read respuestaNodeJs
					# Validar respuesta de instalación de NodeJs
					if [[ "$respuestaNodeJs" =~ ^(Si|S|s)$ ]]; then
							echo "Se procede a instalar NodeJs"
							NodeJs
					fi
					#----------------------------------------------------------------
					echo "Desea instalar NGINX [S/N]:"
					read respuestaNginx
					# Validar respuesta de instalación de Nginx
					if [[ "$respuestaNginx" =~ ^(Si|S|s)$ ]]; then
							echo "Se procede a instalar Nginx"
							Nginx
					fi
					#----------------------------------------------------------------
					echo "Desea instalar PM2 [S/N]:"
					read respuestaPm2
					# Validar respuesta de instalación de PM2
					if [[ "$respuestaPm2" =~ ^(Si|S|s)$ ]]; then
							echo "Se procede a instalar PM2"
							Pm2
					fi
					#----------------------------------------------------------------
					echo "Desea instalar GIT [S/N]:"
					read respuestaGit
					# Validar respuesta de instalación de GIT
					if [[ "$respuestaGit" =~ ^(Si|S|s)$ ]]; then
							echo "Se procede a instalar GIT"
							Git
					fi
		else 
					if [[ "$respuestaTodosUnoxUno" =~ ^(T|t)$ ]]; then
						echo -e "\033[31m#####################################################################\033[0m"
						echo -e "\033[31m###### INSTALACIÓN DE TODO EL SOFTWARE REQUERIDO INSTALADO ##########\033[0m"
						echo -e "\033[31m#####################################################################\033[0m"					
						echo "Se procede a instalar todo el software necesario"
						echo -e "\e[33mIniciando Visual Code.\e[0m"
						_VisualCode
						echo -e "\e[33mPaso Visual Code terminado.\e[0m"
						echo -e "\e[33mIniciando PostgreSQL.\e[0m"
						_PostgreSQL
						echo -e "\e[33mPaso PostgreSQL terminado.\e[0m"
						echo -e "\e[33mIniciando Mongo DB\e[0m"
						_MongoDB
						echo -e "\e[33mPaso Mongo DB terminado.\e[0m"
						echo -e "\e[33mIniciando NodeJs\e[0m"
						_NodeJs3
						echo -e "\e[33mPaso NodeJs terminado.\e[0m"
						echo -e "\e[33mIniciando Nginx\e[0m"
						_Nginx
						echo -e "\e[33mPaso Nginx terminado.\e[0m"
						echo -e "\e[33mIniciando Pm2\e[0m"
						_Pm2 
						echo -e "\e[33mPaso Pm2 terminado.\e[0m"
						echo -e "\e[33mIniciando Git\e[0m"
						_Git
						echo -e "\e[33mPaso Git terminado.\e[0m"
					else
						echo "La selección tecleada no es válida"
						exit
					fi
		fi

		clear

		echo -e "\033[31m#####################################################################\033[0m"
		echo -e "\033[31m############ SOFTWARE REQUERIDO INSTALADO ###########################\033[0m"
		echo -e "\033[31m#####################################################################\033[0m"
		#Comprobación de las versiones instaladas - - - - - - - - - -
		echo -e "\033[31mVersión de PostGreSQL:\033[0m"
		psql --version
		echo "------------------------------------------------------"
		echo -e "\033[31mVersión de NodeJs:\033[0m"
		node -v
		echo "------------------------------------------------------"
		echo -e "\033[31mVersión de MongoDB:\033[0m"
		mongo --version
		echo "------------------------------------------------------"
		echo -e "\033[31mVersion de Nginx:\033[0m"
		nginx -v
		echo "------------------------------------------------------"
		echo -e "\033[31mVersion de PM2:\033[0m"
		pm2 -v
		echo "------------------------------------------------------"
		echo -e "\033[31mVersion de GIT:\033[0m"
		git --version
		#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

}


configuracionVariablesConexionBD()
{
	cd captura
	cd config
	#chmod -R 777 appsettings.json

}

seleccionaOpcionMenu()
{
	recuperaArchivoCredenciales
	uC=$usuarioCaptura
	uD=$usuarioDashboard
	psw=$password
	respuestaUsuarioCaptura=$uC
	respuestaUsuarioDashboard=$uD
	respuestaPassword=$psw

	#Determina si hay valores almacenados previamente
	if [[ -z "$uC" ]]; then
		echo "Proporcione la siguiente información para configurar varios archivos del sistema."
		echo "##########################################################################"
		echo "Desea establecer los nuevos valores de los esquemas de captura, dashboard y password [S/N]:"
			read respuestaUsuariosyPassword
		if [[ "$respuestaUsuariosyPassword" =~ ^(Si|S|s)$ ]]; then
			echo "Usuario de configuración para prueba_captura en la Plataforma de Compras Abiertas:"
				read _respuestaUsuarioCaptura
			echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - O"
			echo "Usuario de configuración para prueba_dashboard en la Plataforma de Compras Abiertas:"
				read _respuestaUsuarioDashboard	
			echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - O"
			echo "Password de configuración de la Plataforma de Compras Abiertas:"
				read _respuestaPassword	
			echo "- - - - - - - - - - - - - - - - - - O"
			creaArchivoCredenciales "$_respuestaUsuarioCaptura" "$_respuestaUsuarioDashboard" "$_respuestaPassword"
		else
			respuestaUsuarioCaptura = "prueba_captura"
			respuestaUsuarioDashboard = "prueba_dashboard"
			respuestaPassword = "p4ssw0rd"
		fi
	else
		echo "Ya hay valores previos definidos para los esquemas de prueba_captura, prueba_dashboard y password"
		respuestaUsuarioCaptura=$uC
		respuestaUsuarioDashboard=$uD
		respuestaPassword=$psw
	fi
	    echo "Valores con los cuales se van a hacer las configuraciones: "
		echo "1) respuestaUsuarioCaptura  : ${respuestaUsuarioCaptura}"
		echo "2) respuestaUsuarioDashboard: ${respuestaUsuarioDashboard}"
		echo "3) respuestaPassword        : ${respuestaPassword}"	


	# array de opciones
	echo "- - - - - - M E N U - - - - -"
	opciones=(
			"Configuración del archivo 'pg_hba.conf'"
			"Creación de la base de datos EDCA"
			"Descargar el archivo del código del INAI"
			"Configuración de variables de conexión a la base de datos"
			"Creación de la base de datos edca y del esquema publica"
			"Configuración del usuario propietario para el esquema public"
			"Creación del esquema dashboard"
			"Configuración del usuario propietario para el esquema dashboard"
			"Validación de conexión a base de datos"
			"Asignación de variables MAPTOKEN"
			"Instalación de Object Relational Mapping del módulo de Infraestructura"
			"Crear vistas del módulo Infraestructura Abierta"
			"Crear usuario del aplicativo"
			"Iniciar los servicios de los módulos"
			"Lanza la plataforma de captura de ComprasAbiertas del INAI"
			"Ejecutar del paso 1-16"
			"Salir"
		)

	while true; do
		# Bucle para mostrar el menú y ejecutar la acción seleccionada
		for (( i=0; i<${#opciones[@]}; i++ )); do
			echo "$((i + 1)). ${opciones[$i]}"
		done

		echo -n "Seleccione una opción: "
		read opcionMenu

		# Validar la opción del usuario
		if [[ $opcionMenu =~ ^[1-9]|10$|11$|12$|13$|14$|15$|16$|17$ ]]; then
			echo "Seleccionó la opción $opcionMenu."
			# Aquí puedes agregar el código para la opción seleccionada
			case $opcionMenu in
				1)
					# ...
					configuraPostgreSQL
					reestablecePasswordPostgreSQL
					echo -e "\e[33mPaso 1 terminado.\e[0m"
					;;
				2)
					# ...
					paso2 "$respuestaUsuarioCaptura"  "$respuestaUsuarioDashboard"	"$respuestaPassword"
					echo -e "\e[33mPaso 2 terminado.\e[0m"
					;;
				3)
					# ...
					paso3
					echo -e "\e[33mPaso 3 terminado.\e[0m"
					;;
				4)
					# ...
					paso4 "$respuestaUsuarioCaptura"  "$respuestaPassword"
					echo -e "\e[33mPaso 4 terminado.\e[0m"
					;;
				5)
					# ...
					paso5 "$respuestaUsuarioCaptura"  "$respuestaPassword"
					echo -e "\e[33mPaso 5 terminado.\e[0m"
					;;
				6)
					# ...
					paso6 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 6 terminado.\e[0m"
					;;
				7)
					# ...
					paso7 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 7 terminado.\e[0m"
					;;
				8)
					# ...
					paso8 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 8 terminado.\e[0m"
					;;
				9)
					# ...
					paso9
					echo -e "\e[33mPaso 9 terminado.\e[0m"
					;;
				10)
					# ...
					paso10
					echo -e "\e[33mPaso 10 terminado.\e[0m"
					;;
				11)
					# ...
					paso11
					echo -e "\e[33mPaso 11 terminado.\e[0m"
					;;	
				12)
					# ...
					paso12
					echo -e "\e[33mPaso 12 terminado.\e[0m"
					;;
				13)
					# ...
					paso13
					echo -e "\e[33mPaso 13 terminado.\e[0m"
					;;
				14)
					# ...
					paso14
					echo -e "\e[33mPaso 14 terminado.\e[0m"
					;;	
				15)
					paso15
					echo -e "\e[33mPaso 15 terminado.\e[0m"
					;;
				16)
					# ...
					configuraPostgreSQL
					reestablecePasswordPostgreSQL
					echo -e "\e[33mPaso 1 terminado.\e[0m"
					paso2 "$respuestaUsuarioCaptura"  "$respuestaUsuarioDashboard"	"$respuestaPassword"
					echo -e "\e[33mPaso 2 terminado.\e[0m"
					paso3
					echo -e "\e[33mPaso 3 terminado.\e[0m"
					paso4 "$respuestaUsuarioCaptura"  "$respuestaPassword"
					echo -e "\e[33mPaso 4 terminado.\e[0m"
					paso5 "$respuestaUsuarioCaptura"  "$respuestaPassword"
					echo -e "\e[33mPaso 5 terminado.\e[0m"
					paso6 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 6 terminado.\e[0m"
					paso7 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 7 terminado.\e[0m"
					paso8 "$respuestaUsuarioDashboard"
					echo -e "\e[33mPaso 8 terminado.\e[0m"
					paso9
					echo -e "\e[33mPaso 9 terminado.\e[0m"
					paso10
					echo -e "\e[33mPaso 10 terminado.\e[0m"	
					paso11
					echo -e "\e[33mPaso 11 terminado.\e[0m"	
					paso12
					echo -e "\e[33mPaso 12 terminado.\e[0m"	
					paso13
					echo -e "\e[33mPaso 13 terminado.\e[0m"	
					paso14
					echo -e "\e[33mPaso 14 terminado.\e[0m"	
					paso15
					echo -e "\e[33mPaso 15 terminado.\e[0m"																
					echo -e "\e[33mPasos 1-15 terminados.\e[0m"
					;;																												
			esac
		elif [[ $opcionMenu =~ ^[18]$ ]]; then
			echo "Saliendo del menú."
			break
		else
			echo "Opción no válida."
			break
		fi
	done
}

creaArchivoCredenciales()
{
	# Obtenemos la ruta del script
	ruta_script=$(readlink -f "$0")

	# Definimos las 3 cadenas de texto
	usuarioCaptura="$1"
	usuarioDashboard="$2"
	password="$3"

	sudo rm - r ruta_script

	# Creamos el archivo en la misma ubicación que el script
	archivo_texto="${ruta_script%.*}.txt"
	echo "$usuarioCaptura" > "$archivo_texto"
	echo "$usuarioDashboard" >> "$archivo_texto"
	echo "$password" >> "$archivo_texto"

	echo "Archivo creado con las credenciales: $archivo_texto"

}

recuperaArchivoCredenciales()
{
	cd /
	# Obtenemos la ruta del script
	ruta_script=$(readlink -f "$0")

	# Definimos el nombre del archivo
	archivo_texto="${ruta_script%.*}.txt"
	
	# Definir las variables
	usuarioCaptura=""
	usuarioDashboard=""
	password=""
	contador=0

	# Leer el archivo línea por línea
	while read line; do
			# Dividir la línea por espacios en blanco
			IFS=' ' read -r campo1 <<< "$line"
			# Asignar los valores a las variables
			if [ "$contador" == 0 ]; then
				usuarioCaptura="$campo1"
			else
					if [ "$contador" == 1 ]; then
						usuarioDashboard="$campo1"
					else
							if [ "$contador" == 2 ]; then
								password="$campo1"
							fi
					fi
			fi
			contador=$((contador + 1))
	done < "instalaComprasAbiertas.txt"

	export usuarioCaptura
	export usuarioDashboard
	export password
}

paso2()
{
	echo -e "\033[31m#####################################################################\033[0m"
	echo -e "\033[31m############ CREANDO LA BASE DE DATOS EDCA ##########################\033[0m"
	echo -e "\033[31m#####################################################################\033[0m"
	rUC=$1 
	rUD=$2	
	psw=$3
    echo "Desea iniciar las tareas de creación de la Base de Datos EDCA [S/N]:"
      	read respuestaCrearEDCA
    # Validar respuesta de creación de la base de Datos EDCA
    if [[ "$respuestaCrearEDCA" =~ ^(Si|S|s)$ ]]; then
            echo "Iniciando tareas de creación de la base de datos EDCA"
            CreacionBaseDatos "$respuestaUsuarioCaptura"  "$respuestaUsuarioDashboard"	"$respuestaPassword"
    fi
}

paso3()
{

	echo -e "\033[31m#####################################################################\033[0m"
	echo -e "\033[31m############ DESCARGA DE ARCHIVOS FUENTE ############################\033[0m"
	echo -e "\033[31m#####################################################################\033[0m"
    echo "Desea iniciar la descarga de los archivos fuente de Compras Abiertas - INAI [S/N]:"
      	read respuestaArchivosFuenteEDCA
    # Validar respuesta de descarga de archivos fuente del EDCA
    if [[ "$respuestaArchivosFuenteEDCA" =~ ^(Si|S|s)$ ]]; then
            echo "Iniciando tareas de descarga del proyecto de Compras Abiertas del INAI"
            descargaArchivosFuenteINAI
			#cd /var/www/html/contratacionesabiertas
    fi	

}

descargaArchivosFuenteINAI()
{
	#sudo mkdir /var/www/html/contratacionesabiertas
	cd /var
	sudo mkdir www
	sudo chmod 777 www
	cd www	
	sudo mkdir html
	sudo chmod 777 html
	cd html
	sudo mkdir contratacionesabiertas
	sudo chmod 777 contratacionesabiertas
	#cd /var/www/html/contratacionesabiertas
	cd contratacionesabiertas
	sudo git clone https://github.com/datosabiertosmx/contrataciones-abiertas-infraestructura
	cd contrataciones-abiertas-infraestructura/contratacionesabiertas/
	sudo mv -v captura dashboard /var/www/html/contratacionesabiertas
	cd ../..
	sudo rm -rf contrataciones-abiertas-infraestructura/
	cd /var/www/html/contratacionesabiertas

	sudo chmod 777 captura
	sudo chmod 777 .
	sudo chmod 777 dashboard
	sudo chmod 777 .	
}

paso4()
{
	#  $1 = usuario
    #  $2 = password
	cd /
	recuperaArchivoCredenciales
	uC=$usuarioCaptura
	uD=$usuarioDashboard
	psw=$password

	echo -e "\033[33m4 Configuración de variables de conexión a la base de datos\033[0m."
	#echo "4) Configuración de variables de conexión a la base de datos"
	echo "Modificar las variables de prueba_captura (${uC}) y prueba_dashboard (${uD}) y password (${psw}) correspondientes al usuario y password creados en el paso 4 del apartado 2, para el esquema public, módulo Sistema de captura en config.json"

  	cd /var/www/html/contratacionesabiertas
	cd captura

	# PASO 1
	cd config
	sudo chmod -R 777 config.json
	#Configurando el usuario, password y base de datos
   	sudo perl -pi -e "s[prueba_captura][$uC]g" config.json
    sudo perl -pi -e "s[prueba_dashboard][$uD]g" config.json	
	sudo perl -pi -e "s[p4ssw0rd]["$psw"]g" config.json

	# PASO 2
    cd ..	
    sudo chmod -R 777 db_conf.js
	sudo perl -pi -e "s[prueba_captura][$uC]g" db_conf.js
	sudo perl -pi -e "s[prueba_dashboard][$uD]g" db_conf.js
	sudo perl -pi -e "s[p4ssw0rd]["$psw"]g" db_conf.js
	cd ..
    
	# PASO 3
	cd dashboard
    chmod -R 777 dash_config.js
    sudo perl -pi -e "s[prueba_dashboard][$uD]g" dash_config.js
    sudo perl -pi -e "s[p4ssw0rd]["$psw"]g" dash_config.js
	echo "Paso 4 terminado."
}

paso5()
{
	#Creación de la base de datos edca y del esquema public
	# $1 = Nuevo usuario que sustituye a prueba_dashboard
	# $2 = Nuevo usuario que sustituye  a prueba_captura
	# Configurando los archivos
	recuperaArchivoCredenciales
	uC=$usuarioCaptura
	uD=$usuarioDashboard
	psw=$password


	echo -e "\033[33m5 Creación de la base de datos edca y del esquema public\033[0m."
	#echo "Creación de la base de datos edca y del esquema public"
    echo "Configurando captura - sql - edca.sql "
	# PASO 1
	cd /var/www/html/contratacionesabiertas/captura
	# PASO 2
	cd sql
        chmod -R 777 edca.sql
        sudo perl -pi -e "s[prueba_captura][$uC]g" edca.sql
		sudo perl -pi -e "s[prueba_dashboard][$uD]g" edca.sql

    # Ejecución del script edca.sql
	if [ -f "/var/www/html/contratacionesabiertas/captura/sql/edca.exp" ]; then
		sudo rm -r /var/www/html/contratacionesabiertas/captura/sql/edca.exp
	fi
	cd /
	if [ -f "edca.exp" ]; then
		# El archivo existe
		echo "El archivo edca.exp existe."
		sudo rm -r edca.exp
		sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/edca.exp
	else
		# El archivo no existe
		sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/edca.exp
	fi
	cp edca.exp /var/www/html/contratacionesabiertas/captura/sql/edca.exp
    cd /var/www/html/contratacionesabiertas/captura
    cd sql
	chmod +x edca.exp	
	expect edca.exp		
	echo "Archivo captura - sql - edca.sql configurado y ejecutado"
}

paso6()
{
		# Configuración del usuario propietario para el esquema public
        # $1 = Usuario nuevo para password_captura
		recuperaArchivoCredenciales
		uC=$usuarioCaptura
		uD=$usuarioDashboard
		psw=$password

		echo "Configuración del usuario propietario para el esquema public"
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
        chmod -R 777 owner_public.sql
        sudo perl -pi -e "s[prueba_captura][$uC]g" owner_public.sql

		if [ -f "/var/www/html/contratacionesabiertas/captura/sql/owner_public.exp" ]; then
			sudo rm -r /var/www/html/contratacionesabiertas/captura/sql/owner_public.exp
		fi
		cd /
		if [ -f "owner_public.exp" ]; then
			# El archivo existe
			echo "El archivo owner_public.exp existe."
			sudo rm -r owner_public.exp
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/owner_public.exp			
		else
			# El archivo no existe
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/owner_public.exp
		fi	
		cp owner_public.exp /var/www/html/contratacionesabiertas/captura/sql/owner_public.exp
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
		chmod +x owner_public.exp	
		expect owner_public.exp		
        echo "Archivo captura - sql - owner_public.sql configurado y ejecutado"
}

paso7()
{
        # Creación del esquema dashboard 
        # $1 = Usuario nuevo para prueba_dashboard
		recuperaArchivoCredenciales
		uC=$usuarioCaptura
		uD=$usuarioDashboard
		psw=$password

		echo "Creación del esquema dashboard"
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
        chmod -R 777 dashboard.sql
        sudo perl -pi -e "s[prueba_dashboard][$uD]g" dashboard.sql

        # Ejecución del script dashboard.sql
		if [ -f "/var/www/html/contratacionesabiertas/captura/sql/dashboard.exp" ]; then
			sudo rm -r /var/www/html/contratacionesabiertas/captura/sql/dashboard.exp
		fi
		cd /
		if [ -f "dashboard.exp" ]; then
			# El archivo existe
			echo "El archivo dashboard.exp existe."
			sudo rm -r dashboard.exp
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/dashboard.exp			
		else
			# El archivo no existe
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/dashboard.exp
		fi		
		cp dashboard.exp /var/www/html/contratacionesabiertas/captura/sql/dashboard.exp
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
		chmod +x dashboard.exp	
		expect dashboard.exp
		echo "Archivo captura - sql - dashboard.sql configurado y ejecutado"	
}

paso8()
{
        # Configuración del usuario propietario para el esquema dashboard 
        # $1 = Usuario nuevo para prueba_dashboard
		recuperaArchivoCredenciales
		uC=$usuarioCaptura
		uD=$usuarioDashboard
		psw=$password

        echo "Configuración del usuario propietario para el esquema dashboard"
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
        chmod -R 777 owner_dashboard.sql
        sudo perl -pi -e "s[prueba_dashboard][$uD]g" owner_dashboard.sql

        # Ejecución script de forma automatizada
		if [ -f "/var/www/html/contratacionesabiertas/captura/sql/owner_dashboard.exp" ]; then
			sudo rm -r /var/www/html/contratacionesabiertas/captura/sql/owner_dashboard.exp
		fi
		cd /
		if [ -f "owner_dashboard.exp" ]; then
			# El archivo existe
			echo "El archivo owner_dashboard.exp existe."
			sudo rm -r owner_dashboard.exp
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/owner_dashboard.exp
		else
			# El archivo no existe
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/owner_dashboard.exp
		fi		
		cp owner_dashboard.exp /var/www/html/contratacionesabiertas/captura/sql/owner_dashboard.exp
        cd /var/www/html/contratacionesabiertas/captura
        cd sql
		chmod +x owner_dashboard.exp	
		expect owner_dashboard.exp
        echo "Archivo captura - sql - owner_dashboard.sql configurado y ejecutado"
}

paso9()
{
        # Validación de conexión a base de datos
	    echo "Validación de conexión a base de datos"
        cd /var/www/html/contratacionesabiertas/captura
        chmod -R 777 db.js
        cat db.js
        echo "Contenido del archivo db.js"
}

paso10()
{
	# Asignación de MAPTOKEN
	echo "Asignación de MAPTOKEN"
	cd /var/www/html/contratacionesabiertas
	cd captura
	cd views

	#Substituir pk.eyJ1IjoiamFtZzE0IiwiYSI6ImNqdTM4cW04aDBrbnQ0NG83ZnM4cWVnOGgifQ.d6L_McpNmO9s_MsPk5loOw
	mapToken= "pk.eyJ1IjoicGRlcHVlYmxhIiwiYSI6ImNsZ3F2czgzdTEyeG4zZmxoZno1czB5cmUifQ.-013bpBzs-GQhu27xkPDAg"
	chmod -R 777 main.ejs
	sudo perl -pi -e "s[pk.eyJ1IjoiamFtZzE0IiwiYSI6ImNqdTM4cW04aDBrbnQ0NG83ZnM4cWVnOGgifQ.d6L_McpNmO9s_MsPk5loOw][$mapToken]g" main.ejs
	cd ..
	cd ..
	cd dashboard
	cd views
	#Substituir pk.eyJ1IjoiamFtZzE0IiwiYSI6ImNqdTM4cW04aDBrbnQ0NG83ZnM4cWVnOGgifQ.d6L_McpNmO9s_MsPk5loOw
	chmod -R 777 contract.ejs	
	sudo perl -pi -e "s[pk.eyJ1IjoiamFtZzE0IiwiYSI6ImNqdTM4cW04aDBrbnQ0NG83ZnM4cWVnOGgifQ.d6L_McpNmO9s_MsPk5loOw][$mapToken]g" contract.ejs
	echo "MAPTOKENs han sido actualizados!"
}

paso11()
{
			#npm install -g npm-force-update
	#sudo apt-get remove --auto-remove
	#sudo apt update
			#sudo apt install --reinstall nodejs
			#sudo apt clean
	cd /
	sudo apt install npm
	#Instalación de Object Relational Mapping del módulo de Infraestructura
	cd /var/www/html/contratacionesabiertas
	cd captura
	npm install pg
	npm install -g sequelize-cli --verbose

	sequelize db:migrate
	sequelize db:seed:all

	echo "Migraciones listas!"
}

paso12()
{
	#Ejecución script de forma automatizada
	if [ -f "/var/www/html/contratacionesabiertas/captura/sql/update_InfraestructuraAbiertav1exp" ]; then
			sudo rm -r /var/www/html/contratacionesabiertas/captura/sql/update_InfraestructuraAbiertav1.exp
	fi
	cd /
	if [ -f "update_InfraestructuraAbiertav1.exp" ]; then
			# El archivo existe
			echo "El archivo update_InfraestructuraAbiertav1.exp existe."
			sudo rm -r update_InfraestructuraAbiertav1.exp
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/update_InfraestructuraAbiertav1.exp
	else
			# El archivo no existe
			sudo curl -L -O https://github.com/gatroxrd/SESEAP_Donwloads/raw/main/update_InfraestructuraAbiertav1.exp
	fi		
	cp update_InfraestructuraAbiertav1.exp /var/www/html/contratacionesabiertas/captura/sql/update_InfraestructuraAbiertav1.exp
    cd /var/www/html/contratacionesabiertas/captura
    cd sql

    chmod -R 777 update_InfraestructuraAbiertav1.sql
	sudo perl -pi -e "s[prueba_captura][$uC]g" update_InfraestructuraAbiertav1.sql
    sudo perl -pi -e "s[prueba_dashboard][$uD]g" update_InfraestructuraAbiertav1.sql
	sudo perl -pi -e "s[prueba_dashboard][$psw]g" update_InfraestructuraAbiertav1.sql

	chmod +x update_InfraestructuraAbiertav1.exp	
	expect update_InfraestructuraAbiertav1.exp
    echo "Archivo captura - sql - update_InfraestructuraAbiertav1.sql configurado y ejecutado"
}


paso13()
{
	recuperaArchivoCredenciales
	uC=$usuarioCaptura
	uD=$usuarioDashboard
	psw=$password
	sudo npm update --force
    cd /var/www/html/contratacionesabiertas/captura

	sudo curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
	sudo apt-get install gcc g++ make

	sudo apt-get install -y nodejs

	echo -e "\e[33mNodeJs 16.20.1 instalado.\e[0m"
	sudo apt update
	npm install mongoose
	echo -e "\e[33mMoongose 6.18.1 actualizado.\e[0m"

	chmod u+x useradm
	sudo ./useradm add $uC
	#--------------------------------------------------------
	#Preparando limpieza de fin de instalación
	cd /
	sudo rm -r update_InfraestructuraAbiertav1.exp
	sudo rm -r owner_dashboard.exp
	sudo rm -r dashboard.exp
	sudo rm -r owner_public.exp
	sudo rm -r edca.exp
	sudo rm -r create_edca.exp
}

paso14()
{
	cd /var/www/html/contratacionesabiertas/captura
	pm2 start npm --name "captura" -- start
	cd ..
	cd dashboard
	pm2 start npm --name "dashboard" -- start
	pm2 save
}

paso15()
{
	# Abrir Firefox en la IP local:3000
	firefox 'http://localhost:3000'
	echo "Abriendo Plataforma de COmpras ABiertas del INAI en http://localhost:3000 "	
	cd /
	# Mostrar un mensaje informativo
}

administradorBD_PostgreSQL()
{
  echo "Sin  código"
	
}


Principal()
{
	clear
	echo -e "\033[31m#####################################################################\033[0m"
	echo -e "\033[32m########### CONFIGURANDO SOFTWARE DE LA PLATAFORMA ##################\033[0m"
	echo -e "\033[31m#####################################################################\033[0m"
	echo "Desea instalar el software necesario para trabajar las Compras Abiertas [S/N]:"
	read respuestaPrerequisitos
	if [[ "$respuestaPrerequisitos" =~ ^(Si|S|s)$ ]]; then
		echo "Se procede a instalar prerequisitos"
		prerrequisitosInstalacion
	fi

	clear
	echo -e "\033[31m#####################################################################\033[0m"
	echo -e "\033[32m#### CONFIGURAR Y DESPLEGAR LA PLATAFORMA DE COMPRAS ABIERTAS INAI ##\033[0m"
	echo -e "\033[31m#####################################################################\033[0m"
	echo "Desea iniciar la configuración y despliegue de la Plataforma de Compras Abiertas [S/N]:"
      		read respuestaConfigurarDesplegarCA
	if [[ "$respuestaConfigurarDesplegarCA" =~ ^(Si|S|s)$ ]]; then
               #echo "Iniciando la configuración y despliegue de la Plataforma de Compras Abiertas"
               seleccionaOpcionMenu
	fi	

}

#- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
clear
sudo git config --global  url.https://gatroxrd:t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@github.com/.git
Principal
