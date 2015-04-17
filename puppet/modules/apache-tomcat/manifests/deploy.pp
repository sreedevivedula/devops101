define apache-tomcat::deploy($war_loc, $tomcat_root_dir, $war_name) {

	file { "Copy Web App":
		path => "${tomcat_root_dir}/webapps/${war_name}",
		source => "${war_loc}",
		ensure => file,
		force => true,
		replace => true
	}

}