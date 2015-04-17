class java {

	require common

 	notify {"Installing JRE7":}

 	oracle_jre { "jre7":
    	version => 7,
  	}

}
