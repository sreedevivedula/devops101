$rpm_install_dir="/opt"
$installer_dir="/opt"
$file_share_url="http://192.168.33.22:8000/"


# Backend App
$todo_backend="TodoBackend-Spring"
$todo_backend_repo_url="${file_share_url}/apps/TodoBackend-Spring.tar"
$todo_backend_app_loc="/opt/TodoBackend-Spring"
$todo_backend_war_loc="${todo_backend_app_loc}/target/libs/todos.war"
$todo_backend_war="todos.war"

# Puppet
$puppet_loc="/vagrant/puppet"
$puppet_system_loc="/etc/puppet"

# Tomcat
$tomcat_name="tomcat"
$tomcat="${installer_dir}/apache-tomcat-7.0.53"
$apache_tomcat_7_0_53_url="${file_share_url}/apache-tomcat-7.0.53.tar.gz"


# Java
$java7_home="/usr/java/jdk1.7.0_55"
$jdk_7_url="${file_share_url}/jdk-7u55-linux-x64.rpm"
$jdk_rpm_name="jdk-1.7.0_55-fcs.x86_64"
