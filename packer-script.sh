#!/bin/sh

sudo yum install httpd -y
sudo service httpd start
aws s3 cp s3://{{user `bucketname`}}/{{user `bucket_keyname`}}/{{user `filename`}}.zip {{user `filename`}}.zip
unzip {{user `filename`}}.zip
rm {{user `filename`}}.zip
sudo cp index.html /var/www/html/
