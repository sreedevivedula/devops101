class tomcat::install {

	common::file_download { "Download Tomcat":

		source 		=> "${tomcat_url}",
		destination => "${downloads_dir}",
		filename	=> "${tomcat_zip_name}"

	}
	
	exec { 'Extract Tomcat' : 

		command => "tar -zxvf ${downloads_dir}/${tomcat_zip_name} -C ${installer_dir}",
		require => Common::File_download["Download Tomcat"]

	}
	
}