define tomcat::deploy($war_loc, $war_name) {

	file { "Copy Web App":

		path => "${tomcat_loc}/webapps/${war_name}",
		source => "${war_loc}",
		ensure => file,
		force => true,
		replace => true

	}

}