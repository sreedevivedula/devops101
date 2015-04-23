class tomcat::start {
	
		exec { "Start Tomcat":

			command		=>	"sh startup.sh",
			cwd 		=>	"${tomcat_loc}/bin",
			onlyif		=>	"test `ps -ef | grep ${tomcat_webapp} | grep -v grep | wc -l` -eq 0",
			require 	=> 	Exec["Extract Tomcat"]
			
		}
}