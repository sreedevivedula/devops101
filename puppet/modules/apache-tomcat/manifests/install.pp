class apache-tomcat::install {

	$tomcat_dirname = "apache-tomcat-7.0.53"

	common::file_download { "Download Tomcat v 7.0.53":

		source 		=> "${apache_tomcat_7_0_53_url}",
		destination => "${installer_dir}",
		filename   => "${tomcat_name}",
		notify 		=> Exec["Extract Tomcat"]

	}
	
	exec { 'Extract Tomcat' : 

		command => "tar -zxvf ${installer_dir}/${tomcat_name} -C ${installer_dir}",
		path 	=> "/bin",
		require => Common::File_download["Download Tomcat v 7.0.53"]

	}
	
}