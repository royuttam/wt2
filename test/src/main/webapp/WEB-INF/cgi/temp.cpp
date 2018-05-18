#include <string.h>
#include <stdlib.h>
int main( int argc, char *argv[] ) {
  char* cmd=new char[100];  
  strcpy(cmd,"");
  for(int i=1;i<argc;i++) {
    strcat(cmd," ");
    strcat(cmd,argv[i]);
  }  
  system(cmd);  
  return(0);
}