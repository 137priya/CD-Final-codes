%{
#include<stdio.h>
int flag=0;
%}
%token type ID
%%
D: T ' ' L;
T: type; 
L: L ',' ID| ID;
%%
main()
{
printf("enter the expression for the grammar 4\n");
yyparse();
printf("valid experession\n");
}
void yyerror()
{ %{
#include<stdio.h>
int flag=0;
%}
%token type ID
%%
D: T ' ' L;
T: type;
L: L ',' ID| ID;
%%
main()
{
printf("enter the expression for the grammar 4\n");
yyparse();
printf("valid experession\n");
}
void yyerror()
{
printf("Invalid expression\n");
exit(1);
}
printf("Invalid expression\n"); 
exit(1);
}
