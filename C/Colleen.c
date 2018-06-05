#include<stdio.h>
/*
  comment 1
*/
void f(){};
int main(){//comment 2
char *s="#include<stdio.h>%c/*%c  comment 1%c*/ %cvoid f(){};%cint main(){//comment 2%cchar *s=%c%s%c;%cf();%cprintf(s,10,10,10,10,10,10,34,s,34,10,10,10);}%c";
f();
printf(s,10,10,10,10,10,10,34,s,34,10,10,10);}
