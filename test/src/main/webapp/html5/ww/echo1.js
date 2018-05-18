//echo1.js
onmessage = function (event){   
  postMessage(event.data, [event.data]);
  //postMessage(event.data);  
}
