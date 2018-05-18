var i = 0;

function timedCount() {
    i = i + 1;
    postMessage(i);
    setTimeout("timedCount()",500);
}
onmessage=function (event){   
n=event.data;
prod=1;
for(i=2;i<n;i++)
  prod=prod*i;
//postMessage(' work '+event.data);
postMessage(prod);

}
//timedCount();