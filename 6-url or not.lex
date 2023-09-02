%{
%}
%%
((http)|(ftp))s?:\/\/[a-zA-Z0-9]{2}(\.[a-z]{2})+(\/[a-zA-Z0-9+=?]*)* {printf("\nURL invalid\n");}
.+ {printf("\nURL valid\n");}
%%
int yywrap(){}
void main()
{
printf("\n enter URL  :");
yylex();
printf("\n");
}

 