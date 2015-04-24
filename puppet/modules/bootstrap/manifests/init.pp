class bootstrap {
	
	package { "wget" :

		name => "wget",
		ensure => present,

	}

	file { "${installer_dir}":

		ensure => "directory"

	}

	file { "${downloads_dir}":

		ensure => "directory"

	}

}
