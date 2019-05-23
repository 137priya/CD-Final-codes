%{
#include<stdio.h>
int flag=0;
%}
%token ID
%%
S:S '=' L|R {flag++;}
;
L: '*' R| ID;
R:L;
%%
main()
{
printf("enter the expression for the grammar \n S->S=L|R\nL->*R|ID\nR->L");
yyparse();
if(flag)
printf("valid experession\n");
else
yyerror();
}
void yyerror()
{
printf("Invalid expression\n");
exit(1); 
}
