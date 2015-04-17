class bootstrap {
	
	package { 'wget' :
		name => 'wget',
		ensure => present,
	}

	file { "/etc/xml":

		force		=> true,
		ensure		=> directory,
		mode		=> 755,

	}

	file { "${downloads_dir}":

		path => "${downloads_dir}",
		ensure => directory

	}


}
