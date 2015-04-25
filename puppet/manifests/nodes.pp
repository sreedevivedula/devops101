Exec {

	path        => '/usr/bin:/bin:/usr/sbin:/sbin',
    logoutput   => true,
    timeout     => 900,
    tries		=> 2

}


node 'base' {

	include bootstrap
	include puppet

}

node 'todo' inherits 'base' {

	include java
	include tomcat

}
