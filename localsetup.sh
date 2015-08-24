#!/bin/bash
# Bash script to run extra Madlibs install steps after Ansible for local dev
echo "This script will run app setup steps, create a super user, and start the python server."

cd /vagrant_data/madlibs

source venv/bin/activate

echo "Run migrations, collectstatic and fixtures? yes/no:"
read SETUPAPP

if [ $SETUPAPP = 'yes' ]; then
  python manage.py migrate
  python manage.py collectstatic
  python manage.py loaddata stories.yaml
fi


echo "Setup new admin user? yes/no:"
read SETUPUSER

if [ $SETUPUSER = 'yes' ]; then

  echo "The password prompt is for django admin user. Enter 'admin' twice:"
  python manage.py createsuperuser --username=admin --email=admin@localhost 

fi

echo "After the runserver starts, you can open the url in a browser"
echo "http://192.168.33.53:8000"
python manage.py runserver 0.0.0.0:8000