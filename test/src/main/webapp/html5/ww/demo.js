onmessage = function (event){   
  prod = 1;
  for(i = 2; i <= 5; i++)
    prod = prod*i;
	//for(i = 2; i <= 50000000; i++);
  //postMessage(5 + ' != ' + prod);
  //alert('a');
  //postMessage(event.data, [event.data]);
  postMessage(event.data);
  
}
