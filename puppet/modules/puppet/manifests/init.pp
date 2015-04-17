class puppet {

	file { '/usr/local/bin/papply':
	
		mode   => '0755',
    	checksum => "md5",
    	content => template("puppet/papply.erb")
  	
  	}

}
