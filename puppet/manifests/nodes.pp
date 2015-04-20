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

node 'backend-ubuntu', 'backend-centos' inherits 'base' {

	class { java :

	} 

	->

	class { apache-tomcat:

	}

	->

	class { apache-tomcat::start :

	}

	->

	class { todo-deploy : }	

}
