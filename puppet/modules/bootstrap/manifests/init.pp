class bootstrap {
	
	package { "wget" :

		name => "wget",
		ensure => present,

	}

	file { "${downloads_dir}":

		ensure => "directory"

	}

}
