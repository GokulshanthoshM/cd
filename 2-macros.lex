%{
int nmacros,nheader;
%}
%%
^#define {nmacros++;}
^#include {nheader++; }
.|\n {}
%%
int yywrap()
{
return 1;
}
int main(int argc, char *argv[])
{
yyin =fopen(argv[1],"r");
yylex();
printf("number of macros defined=%d\n",nmacros);
printf("number of header files included\n=%d\n",nheader);
fclose(yyin);
}