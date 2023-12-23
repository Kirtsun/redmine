#!/bin/bash

redmine_version="5.1.1"

red_url="https://www.redmine.org/releases/redmine-$redmine_version.zip"


wget $red_url -P . && unzip redmine-$redmine_version.zip

cp ./database.yml ./redmine-5.1.1/config/database.yml
rm ./redmine-5.1.1/Gemfile
cp ./Gemfile ./redmine-5.1.1/Gemfile

echo "Redmine скачан, версия 5.1.1, установлено стандартное подклбчение к базе данных postgresql, если хотите изменить, измените файл database.yml или обратитесь в официальному сайту https://www.redmine.org/projects/redmine/wiki/MySQL_configuration"