when HTTP_REQUEST {

	if { [HTTP::uri] ends_with "/" } {
	
	    if { ! [HTTP::cookie exists "visited_maintenance_page"] || [HTTP::cookie value "visited_maintenance_page"] != "true" } {
        
		 	HTTP::respond 200 content {
				<html>
	      			<head><meta http-equiv="set-cookie" content="visited_maintenance_page=true; expires=10">
	      				<title>Maintenance Page</title>
	      			</head>
	      			<body>
	      			     <center><img src="https://www.dropbox.com/s/1shixntablezykb/ansible_f5demo.png?raw=1"</img><</center>
	      			     <br/>
	      			     <h1><center>This site is scheduled for maintenance in the next hour. <br/>
	      			     	Sorry for any inconvenience caused. Please click to <a href="/">continue</a></center></h1>
	      			</body>
	      		</html>
		 	}
		
	    }
	}
}
