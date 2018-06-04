#include <stdio.h>//comment
#define FMT "#include <stdio.h>//comment%c#define FMT %c%s%c%c#define START() int main(){FILE *f=fopen(%cGrace_kids.c%c, %cw+%c);fprintf(f, FMT, 0x0a, 0x22, FMT, 0x22, 0x0a, 0x22, 0x22, 0x22, 0x22, 0x0a, 0x0a, 0x0a);END(f);}%c#define END(f) fclose(f)%cSTART();%c"
#define START() int main(){FILE *f=fopen("Grace_kids.c", "w+");fprintf(f, FMT, 0x0a, 0x22, FMT, 0x22, 0x0a, 0x22, 0x22, 0x22, 0x22, 0x0a, 0x0a, 0x0a);END(f);}
#define END(f) fclose(f)
START();
