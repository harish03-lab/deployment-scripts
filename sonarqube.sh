sudo apt update
sudo apt upgrade -y
sudo apt install -y openjdk-17-jdk
java -version
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo apt install postgresql postgresql-contrib -y
sudo systemctl enable postgresql
sudo systemctl start postgresql
sudo systemctl status postgresql
psql --version
sudo -i -u postgres
createuser ddsonar
psql
ALTER USER ddsonar WITH ENCRYPTED password 'mwd#2%#!!#%rgs';
CREATE DATABASE ddsonarqube OWNER ddsonar;
GRANT ALL PRIVILEGES ON DATABASE ddsonarqube to ddsonar;
\l
\du
\q
exit
sudo apt install zip -y
sudo wget
https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-26.2.0.119303.zip
ls
sudo unzip sonarqube-26.2.0.119303.zip
sudo mv sonarqube-26.2.0.119303 sonarqube
sudo mv sonarqube /opt/
sudo groupadd ddsonar
sudo useradd -d /opt/sonarqube -g ddsonar ddsonar
sudo chown ddsonar:ddsonar /opt/sonarqube -R
