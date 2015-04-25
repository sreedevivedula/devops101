class todo-deploy {

	common::file_download { "Download TodoBackend":
	
		source => "${todo_backend_app_url}",
		filename => "${todo_backend_war}",
		destination => "${downloads_dir}",
	
	}

	common::file_download { "Download TodoFrontend":
	
		source => "${todo_frontend_app_url}",
		filename => "${todo_frontend_zip_name}",
		destination => "${downloads_dir}",
	
	}

	exec { 'Extract TodoFrontend' : 

		command => "tar -zxvf ${downloads_dir}/${todo_frontend_zip_name} -C ${installer_dir}",
		require => Common::File_download["Download TodoFrontend"]

	}

	tomcat::deploy::war { "Deploy Todo War":

		war_loc				=> 	"${downloads_dir}/${todo_backend_war}",
		war_name			=>	"${todo_backend_war}",
		require				=> 	[Exec["Start Tomcat"], Common::File_Download["Download TodoBackend"]]

	}

	tomcat::deploy::site { "Deploy Todo Frontend":

		site_loc			=> 	"${installer_dir}/${todo_frontend_app}",
		site_name			=>	"${todo_frontend_app}",
		require				=> 	[Exec["Start Tomcat"], Exec["Extract TodoFrontend"]]

	}

}