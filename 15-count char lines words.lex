%{
int nchar,nword,nline;
%}
%%
\n {nline++;nchar++;}
[^\t\n]+ {nword++,nchar++,yyleng; }
. {nchar++;}
%%
int yywrap(void)
{
return 1;
}
int main(int argc,char *argv[])
{
yyin=fopen(argv[1],"r");
yylex();
printf("number of characters =%d\n",nchar);
printf("number of words =%d\n",nword);
printf("number of lines =%D\n",nline);
fclose(yyin);
}