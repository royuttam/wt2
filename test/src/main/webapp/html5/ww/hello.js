//hello.js
var count = 0;
onconnect = function(e) {
  count += 1;
  var port = e.ports[0];
  port.postMessage('Connected: ' + count);
  port.onmessage = function(e) {
    port.postMessage('Hello '+e.data);
  }
  
}