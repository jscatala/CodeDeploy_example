#settle down
sleep 10

PROJ_FOLDER="CODE_DEPLOY_EX"

#UPDATE
echo "System Update and basics..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install ccze screen unzip -y

echo "Moving screenrc..."
cp /vagrant/Assets/screenrc ~/.screenrc


#python3
echo "Installing python3 and virtual env dep's..."
sudo apt-get install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install virtualenv

#echo "Create dirs and install requirements..."
mkdir $HOME/.venvs
ln -s /vagrant/Code $HOME/Code
virtualenv $HOME/.venvs/$PROJ_FOLDER
cd $HOME/.venvs/$PROJ_FOLDER
bin/pip uninstall -y appdirs
bin/pip install setuptools
bin/pip install -r /vagrant/Assets/requirements.txt


#gunicorn
echo "Setting up gunicorn..."
sudo cp /vagrant/Assets/gunicorn.conf /etc/systemd/system/example.service
sudo systemctl start example 
sudo systemctl enable example 


#nginx
echo "Installing nginx"
sudo apt-get install nginx -y
sudo ln -s /vagrant/Assets/example_nginx.conf /etc/nginx/sites-enabled
sudo nginx -t
sudo systemctl restart nginx


###ADD GPG
#echo "Adding MongoDB GPG..."
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

###ADD MongoDB repo
#echo "Installing MongoDB..."
#echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
#sudo apt-get update
#sudo apt-get install -y mongodb-org

#echo "Adding MongoDB as a service..."
#sudo cp /vagrant/Assets/mongodb.service /etc/systemd/system/mongodb.service
#sudo systemctl start mongodb
#sudo systemctl enable mongodb

#echo "Restoring database..."
#unzip /vagrant/Assets/mongodump_base-2017-03-07.zip 
#mongorestore mongodump_base-2017-03-07

#rm -rf mongodump_base-2017-03-07

exit 0
