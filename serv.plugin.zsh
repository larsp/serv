
function serv() {
	echo "Serving file: $1 on port 8080"
	while true; 
	do {
		echo -e 'HTTP/1.1 200 OK\r\nContent-Type: application/force-download\r\nContent-Disposition: attachment; filename='$1';\r\n'; \
		cat $1;
	} | nc -l 8080;
	sleep 1
	done
}
