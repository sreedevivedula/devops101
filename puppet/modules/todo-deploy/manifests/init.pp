class todo-deploy {

	common::file_download { "Download TodoBackend":
	
		source => "${todo_backend_repo_url}",
		filename => "${todo_backend}.tar",
		destination => "${installer_dir}",
		notify 		=> Exec["Extract TodoBackend"]
	
	}

	exec { 'Extract TodoBackend' : 

		command => "tar -xvf ${installer_dir}/${todo_backend}.tar -C ${installer_dir}",
		path 	=> "/bin",
		require => Common::File_download["Download TodoBackend"]

	}

	exec { "Package App" : 

		command => "sh gradlew war",
		cwd 	=> "${todo_backend_app_loc}",
		logoutput => "true",
		creates	=> "${todo_backend_war_loc}",
		require => Exec["Extract TodoBackend"]

	}

	apache-tomcat::deploy { "Deploy Todo War":

		war_loc				=> 	"${todo_backend_war_loc}",
		tomcat_root_dir		=>	"${tomcat}",
		war_name			=>	"${todo_backend_war}",
		require				=> 	[Exec["Package App"], Exec["Start Tomcat"]]

	}


}