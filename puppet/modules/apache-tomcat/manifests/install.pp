class apache-tomcat::install {

	$filename = "apache-tomcat-7.0.53.tar.gz"
	$tomcat_dirname = "apache-tomcat-7.0.53"
	$source = "http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.53/bin/${filename}"

	common::file_download { "Download Tomcat v 7.0.53":

		source 		=> "${source}",
		filename 	=> "${filename}",
		destination => "${downloads_dir}",
		notify 		=> Exec["Extract Tomcat"]

	}
	
	exec { 'Extract Tomcat' : 

		command => "tar -zxvf ${downloads_dir}/${filename} -C /vagrant",
		path 	=> "/bin",
		cwd 	=> "${downloads_dir}",
		require => Common::File_download["Download Tomcat v 7.0.53"]

	}
	
}