class bootstrap {
	
	$installer_dir="/usr/install"
	$downloads_dir="/usr/downloads"


	package { "wget" :

		name => "wget",
		ensure => present,

	}

	file { "${installer_dir}":

		path 	=> "${installer_dir}",
		ensure 	=> "directory"

	}

	file { "${downloads_dir}":

		path 	=> "${downloads_dir}",
		ensure 	=> "directory"

	}

}
