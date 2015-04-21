echo "Welcome to DevOps 101"
hostname dev.devops101.com
yum -y install ruby ruby-lib ruby-shadow puppet
hostname backend-centos.devops101.com
echo '192.168.33.10 backend-centos backend-centos.devops101.com' >> /etc/hosts
