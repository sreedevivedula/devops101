class todo-deploy {

	common::file_download { "Download TodoBackend":
	
		source => "${todo_backend_app_url}",
		filename => "${todo_backend_war}",
		destination => "${downloads_dir}",
	
	}

	tomcat::deploy { "Deploy Todo War":

		war_loc				=> 	"${downloads_dir}/${todo_backend_war}",
		war_name			=>	"${todo_backend_war}",
		require				=> 	[Exec["Start Tomcat"]]

	}


}