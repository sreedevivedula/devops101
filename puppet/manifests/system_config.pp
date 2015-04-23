$installer_dir="/opt"
$file_share_url="http://192.168.33.22:8000/"
$downloads_dir="/usr/downloads"

# Backend App
$todo_backend="TodoBackend-Spring"
$todo_backend_app_url="${file_share_url}/apps/TodoBackend-Spring.tar"
$todo_backend_app_loc="${$installer_dir}/TodoBackend-Spring"
$todo_backend_war_loc="${todo_backend_app_loc}/target/libs/todos.war"
$todo_backend_war="todos.war"

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
