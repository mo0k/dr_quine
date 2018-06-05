#include <stdio.h>
#include <stdlib.h>
#define FMT "#include <stdio.h>%c#include <stdlib.h>%c#define FMT %c%s%c%c#define FT() int main(){int i=%d;if (i < 0) return(0);char n[128];sprintf(n, %cSully_%%d.c%c, i);FILE *f=fopen(n, %cw+%c);fprintf(f, FMT, 0x0a, 0x0a, 0x22, FMT, 0x22, 0x0a, i-1, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x0a, 0x0a);fclose(f);sprintf(n, %cgcc Sully_%%d.c -o Sully_%%d && ./Sully_%%d%c, i, i, i);system(n);}%cFT();%c"
#define FT() int main(){int i=5;if (i < 0) return(0);char n[128];sprintf(n, "Sully_%d.c", i);FILE *f=fopen(n, "w+");fprintf(f, FMT, 0x0a, 0x0a, 0x22, FMT, 0x22, 0x0a, i-1, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x0a, 0x0a);fclose(f);sprintf(n, "gcc Sully_%d.c -o Sully_%d && ./Sully_%d", i, i, i);system(n);}
FT();
