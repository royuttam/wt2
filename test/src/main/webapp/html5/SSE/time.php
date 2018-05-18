<?php
header('Content-Type: text/event-stream');
while(true) {
	echo "data: " . date("Y/m/d h:i:sa") . "\n\n";
	flush();
	sleep(1);
}
?>