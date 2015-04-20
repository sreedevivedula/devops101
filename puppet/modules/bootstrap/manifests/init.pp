class bootstrap {
	
	package { 'wget' :
		name => 'wget',
		ensure => present,
	}

}
