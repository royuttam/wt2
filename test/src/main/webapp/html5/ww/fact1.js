onmessage = function (event){   
  prod = 1;
  for(i = 2; i <= event.data; i++)
    prod = prod*i;
  postMessage(event.data +' != '+prod);
}
