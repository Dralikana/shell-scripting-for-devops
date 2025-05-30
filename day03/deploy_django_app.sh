#!/bin/bash

<< task
Deploy django app
and handle the code for errors
task

code_clone() {
	echo "Cloning the django app.."
	git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements() {
	echo "Installing dependencies"
	sudo apt-get install -y docker.io nginx docker-compose

}

required_restarts() {
	
	sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
	#sudo systemctl restart docker
	

}

deploy() {
	docker build -t notes-app .
	echo "----- check 1 ----"
	#docker run -d -p 8000:8000 notes-app:latest
	docker-compose up -d
	echo "----- check 2 ----"

}

echo "******************* DEPLOYMENT STARTED *******************"
if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi


if ! install_requirements; then
	echo "installaltion fail"
	exit 1
fi


if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi


if ! deploy; then
	echo "Mailing the admin...."
	#sendmail
	exit 1
fi


echo "******************* DEPLOYMENT COMPLETED *****************"

