#!E:\ajp\apache-tomcat-7.0.59\webapps\JavaBridgeTemplate621\WEB-INF\cgi\amd64-windows\php.exe
<?php
echo "Content-type: text/html\n\n";
//header('Content-Type: text/event-stream');
//header('Cache-Control: no-cache'); // recommended to prevent caching of event data.

/**
 * Constructs the SSE data format and flushes that data to the client.
 *
 * @param string $id Timestamp/id of this connection.
 * @param string $msg Line of text that should be transmitted.
 */
function sendMsg($id, $msg) {
  echo "id: $id" . PHP_EOL;
  echo "data: $msg" . PHP_EOL;
  echo PHP_EOL;
  ob_flush();
  flush();
}

$serverTime = time();

sendMsg($serverTime, 'server time: ' . date("h:i:s", time()));
?>

