define common::file_download ($source, $destination, $filename, $options="") {

	notify {"Downloading from ${source} to ${destination} with ${options} ":}

	$cmd = "wget ${options} ${source} -O ${destination}/${filename}"

	notify {"Command is '${cmd}'":}

	exec { "Download from ${source}":

		command 	=> "${cmd}",
		creates 	=> "${destination}/${filename}",	
		require 	=> Package["wget"]

	}

}
