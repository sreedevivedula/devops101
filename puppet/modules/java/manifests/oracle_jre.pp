define oracle_jre ($version) {
	
	notify {"Installing Oracle JRE with Version ${version}":}
	
	if $version == 7 {
	
		$source = "${jdk_7_url}"
		$installed_rpm = "jdk-7"
	
	}
		
	common::file_download { "Download JDK ${version}":
	
		source => "${source}",
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