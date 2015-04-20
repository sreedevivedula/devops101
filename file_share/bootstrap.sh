echo "==== File Share ===="
hostname fileshare.devops101.com
echo '192.168.33.22 fileshare fileshare.devops101.com' >> /etc/hosts
cd /vagrant
`nohup python -m SimpleHTTPServer 8000 &`
