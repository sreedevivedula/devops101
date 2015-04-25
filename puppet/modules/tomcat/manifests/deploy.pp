define tomcat::deploy::war($war_loc, $war_name) {

	file { "Copy Web App ${war_name}":

			path => "${tomcat_loc}/webapps/${war_name}",
			source => "${war_loc}",
			ensure => file,
			force => true,
			replace => true

		}

	}

define tomcat::deploy::site($site_loc, $site_name) {

	file { "Copy Web Site ${site_name}":

		path => "${tomcat_loc}/webapps/${site_name}",
		source => "${site_loc}",
		ensure => directory,
		force => true,
		replace => true,
		recurse => true

	}

}
