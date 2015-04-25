class java::install {
	
	notify {"Installing Java":}

	include common

	common::file_download { "Download JDK":
	
		source => "${jdk_url}",
		filename => "${jdk_rpm_name}",
		destination => "${downloads_dir}",
		options => "--no-cookies --no-check-certificate --header 'Cookie: oraclelicense=accept-securebackup-cookie'"
	
	}

    package { "${jdk_rpm_name}":
	
	    ensure 		=> installed,
	    source 		=> "${downloads_dir}/${jdk_rpm_name}",
	    provider 	=> rpm,
	    require 	=> Common::File_Download["Download JDK"]

	}	

}