ruby --version
sudo apt update
sudo apt upgrade
sudo apt install python3-pip apache2 libapache2-mod-wsgi-py3
sudo pip3 install virtualenv
mkdir ~/myproject
cd ~/myproject
virtualenv myprojectenv
source myprojectenv/bin/activate
pip install django
django-admin.py startproject myproject .
nano myproject/settings.py
cd ~/myproject
cd ..
ls
cd myproject/
ls
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
deactivate
sudo nano /etc/apache2/sites-available/000-default.conf
chmod 664 ~/myproject/db.sqlite3
sudo chown :www-data ~/myproject/db.sqlite3
sudo chown :www-data ~/myproject
sudo service apache2 restart
