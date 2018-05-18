#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main( int argc, char *argv[] ) {
  char args[100];
  strcpy(args,"");
  for(int i=1;i<argc;i++) {
    strcat(args," ");
    strcat(args,argv[i]);
  }
  
  //char* pch = strtok (args,"+");
  char *cmd=new char[100], *pwd=new char[100];
  /*
  strcpy(cmd,pch);
  pch = strtok (NULL, "+");
  strcpy(pwd,pch);
  
  pch = strtok (cmd, "=");
  cmd = strtok (NULL, "=");
  
  pch = strtok (pwd, "=");
  pwd = strtok (NULL, "=");
*/
  cmd = strtok (args,"+");
  strcpy(pwd,"cd ");
strcat(pwd, strtok (NULL,"+"));

//strtok (NULL,"=");
//pwd=strtok (NULL,"+");
  printf("%s %s",cmd,pwd);
  //strcat("cd "

//printf("<output>");
  system(pwd); 
  //system(cmd); 
  //printf("</output><pwd>");
  
  /*
  while (pch != NULL) {
    char pch1[100];strcpy(pch1,pch);
	char* pch2 = strtok (pch1, "=");	  
	//pch1 = strtok (pch1, "+");
	printf ("%s\n",pch2);
    printf ("%s\n",pch1);
    pch = strtok (, "+");
  }
  */
  //printf("</pwd>");
  return(0);
}