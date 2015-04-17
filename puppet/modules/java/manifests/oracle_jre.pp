define oracle_jre ($version) {
	
	notify {"Installing Oracle JRE with Version ${version}":}
	
	if $version == 7 {
	
		$rpm_file_name = "jdk-7u55-linux-x64.rpm"
		$source = "http://download.oracle.com/otn-pub/java/jdk/7u55-b13/${rpm_file_name}"
		$installed_rpm = "jdk-1.7.0_55-fcs.x86_64"
	
	}
	
	else {
	
		$rpm_file_name = "Not Defined"
	
	}
	
	common::file_download { "download ${rpm_file_name}":
	
		source => "${source}",
		filename => "${rpm_file_name}",
		destination => "${downloads_dir}",
		options => "--no-cookies --no-check-certificate --header 'Cookie: oraclelicense=accept-securebackup-cookie'"
	
	}
    

    package { "${installed_rpm}":
	
	    ensure => installed,
	    source => "${downloads_dir}/${rpm_file_name}",
	    provider => rpm,
	    require => Common::File_download["download ${rpm_file_name}"],

	}

}
