# Redmine

Navigate to the folder where you want to download Redmine. 
Run the redmine_download.sh script, redmine version 5.1.1 will be downloaded, this can be changed in the redmine_download.sh file.


To get started you need to create the redmine user in the Postgres database, then you need to create the redmine database, the owner of the database should be the redmine user, the default password should be set by postgre. 

In order to substitute the login data, you need to change the values in the config/database.yml file.


To work on SSL certificate, it is necessary to create the /cert directory in the /nginx directory and create an SSL certificate using the OpenSSL library. 
The certificate names should be as follows:
 - certificate.crt
 - privateKey.key


It is necessary to create the .htpasswd file in the root directory. 
Using the command:  
 - htpasswd -c /path/to-your/file/.htpasswd user_name  
(replace user_name with your username)

This way you will be able to log in and access redmine.

## To run with docker-compose:
In the root of the application, you need to run the command: 
 - docker-compose build

After the image has been created: 
 - docker-compose up


To authenticate with nginx, enter the login and password that you have written in the .htpasswd file.

Use a standard administrator account to log in to redmine:

login: admin

password: admin





