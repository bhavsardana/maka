#main script for installation of the tool and its dependencies
#for now writing steps for mongodb installation here

#adding steps for setup of EC2 instances:
sudo yum update -y
yum install httpd -y
sudo yum install git
service httpd start
chkconfig http on
git clone https://github.com/bhavsardana/maka.git
sudo yum install -y mongodb-org

#installation using apt-get
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt-get update
sudo apt-get install -y mongodb-org

#using tarball
curl -O https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-3.6.3.tgz
tar -zxvf mongodb-linux-x86_64-3.6.3.tgz
mkdir -p mongodb
cp -R -n mongodb-linux-x86_64-3.6.3/ mongodb
