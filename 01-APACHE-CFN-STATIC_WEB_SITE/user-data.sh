#! /bin/bash
yum update -y
yum install httpd -y
FOLDER="https://raw.githubusercontent.com/AbdullahBozduman/AWS_PROJECTS/main/01-APACHE-CFN-STATIC_WEB_SITE"
cd /var/www/html
rm -f index.html
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/cat3.png
systemctl start httpd
systemctl enable httpd 