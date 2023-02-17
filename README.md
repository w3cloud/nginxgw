# Nginx gateway
* Ubuntu, Nginx, Lets encrypt bundle
* One nginx ubuntu can handle multiple sites.
* Feel free to fork and use it.

### Instructions
* Build the image by running ./build.sh
* Modify Docuker compose as needed
* docker-compose up -d

### Mounts
* 3 folders moutned from the host.
* data/sites this is the html folder for your sites.
* data/sites-enabled nginx config file folder
* data/letsencrypt lensencrypt certificates stored here.

