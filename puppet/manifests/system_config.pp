$installer_dir="/usr/install"
$file_share_url="http://192.168.33.22:8000/"
$downloads_dir="/usr/downloads"

# Backend App
$todo_backend_app_url="${file_share_url}/apps/todos.war"
$todo_backend_war="todos.war"

# Frontend App
$todo_frontend_app_url="${file_share_url}/apps/to-do-list.tar.gz"
$todo_frontend_app="to-do-list"
$todo_frontend_zip_name="to-do-list.tar.gz"

# Puppet
$puppet_loc="/vagrant/puppet"
$puppet_system_loc="/etc/puppet"

# Tomcat
$tomcat_zip_name="apache-tomcat-7.0.53.tar.gz"
$tomcat_loc="${installer_dir}/apache-tomcat-7.0.53"
$tomcat_url="${file_share_url}/apache-tomcat-7.0.53.tar.gz"
$tomcat_download_loc="${downloads_dir}/apache-tomcat-7.0.53.tar.gz"

# Java
$jdk_url="${file_share_url}/jdk-7u55-linux-x64.rpm"
$jdk_rpm_name="jdk-1.7.0_55-fcs.x86_64"
