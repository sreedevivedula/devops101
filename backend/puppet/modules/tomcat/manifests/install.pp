class tomcat::install {

	$tomcat_dirname = "tomcat"

	common::file_download { "Download Tomcat":

		source 		=> "${tomcat_url}",
		destination => "${installer_dir}",
		filename   => "${tomcat_name}",
		notify 		=> Exec["Extract Tomcat"]

	}
	
	exec { 'Extract Tomcat' : 

		command => "tar -zxvf ${installer_dir}/${tomcat_name} -C ${installer_dir}",
		path 	=> "/bin",
		require => Common::File_download["Download Tomcat"]

	}
	
}