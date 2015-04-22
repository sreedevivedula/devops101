class java::install {
	
	notify {"Installing Java":}

	common::file_download { "Download JDK ${version}":
	
		source => "${jdk_url}",
		filename => "${jdk_rpm_name}",
		destination => "${installer_dir}",
		options => "--no-cookies --no-check-certificate --header 'Cookie: oraclelicense=accept-securebackup-cookie'",
		notify	=> Package["${jdk_rpm_name}"]
	
	}

    package { "${jdk_rpm_name}":
	
	    ensure => installed,
	    source => "${installer_dir}/${jdk_rpm_name}",
	    provider => rpm

	}	

}