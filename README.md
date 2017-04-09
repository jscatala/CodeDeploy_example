# AWS CodeDeploy 

El siguiente repo corresponde a un ejemplo funcional del proceso de desarrollo, partiendo desde una máquina Vagrant. El proceso de CI/CD será completado a través de una cuenta gratuita en Codeship, la cual se encargará de subir el código con el servicio AWS CodeDeploy.

--- 

## Organización del Proyecto

El proyecto posee dos directorios principales. Uno es **Code**, el cuál posee todo lo referente a nivel de código, y **Assets** el cuál posee todo lo referente a archivos tanto de configuración para los servicios como archivos de provisionamiento y automatización. 

---

## Estructura del Proyecto

* **README.md** - este archivo
* **Vagrantfile** - archivo de configuración para la utilización de vagrant
 
* ***Assets***
    * **audtoria_nginx.conf** - configuración de nginx
    * **bootstrap.sh** - script para el provisionamiento de la máquina Vagrant
    * **requirements.txt** - requerimientos de pip por parte del proyecto
    *  **codeship_prov.sh** - script de provisionamiento utilizado en codeship
    *  **aws_packer_prov.json** - script de provisionamiento para packer en aws
    *  **gunicorn.conf** - script de upstart para gunicorn

* ***Code***
    * **API** - Proyecto en si

---

##Utilización

###Vagrant: 
Para realizar el desarrollo local, solamente basta tener instalado vagrant, y sobre el directorio principal ejecutar el comando: *vagrant up*. Con esto se descargará una máquina ubuntu la cuál tendrá previsto todo lo necesario para solamente preocuparse por desarrollar.





---

## Links Útiles

[DigitalOcean: Instalar MongoDB](https://www.digitalocean.com/community/tutorials/como-instalar-mongodb-en-ubuntu-16-04-es)

[DigitalOcean: Flask with gunicorn and Nginx](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-14-04)

---

## Changelog
-
