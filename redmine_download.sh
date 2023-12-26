#!/bin/bash

redmine_version="5.1.1"


curl -o redmine.zip https://www.redmine.org/releases/redmine-$redmine_version.zip && unzip redmine.zip

rm redmine.zip && mv redmine-$redmine_version redmine

cp ./redmine.conf/database.yml ./redmine/config/database.yml
rm ./redmine/Gemfile
cp ./redmine.conf/Gemfile ./redmine/Gemfile

echo "Redmine скачан, версия $redmine_version, установлено стандартное подклбчение к базе данных postgresql, если хотите изменить, измените файл database.yml или обратитесь к официальному сайту https://www.redmine.org/projects/redmine/wiki/MySQL_configuration"