%{
#include<stdio.h>
int c=0;
FILE *fp;
%}
id [a-zA-Z][a-zA-Z0-9]*
num [0-9]+
op ((<)|(<=)|(>)|(>=)|(==)|(!=))
ws [ \t\n]*
%%
\n {c++;}
"if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws}("else if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws})*"else"{ws}"{".*"}"{ws}("else"{ws}"{".*"}")+ {ECHO; printf("\nInvalid if elseif else as it has multiple else in line no: %d\n", c+1);}
"if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws}("else if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws})*"else"{ws}"{".*"}" {ECHO; printf("\nValid if elseif else in line no: %d\n", c+1);}
"if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws}("else if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws})* {ECHO; printf("\nInvalid if elseif else as it ends without else in line no: %d\n", c+1);}
"if""("({id}|{num}){op}({id}|{num})({op}({id}|{num}))+")"{ws}"{".*"}"{ws}("else if""("({id}|{num})({op}({id}|{num}))?")"{ws}"{".*"}"{ws})*"else"{ws}"{".*"}" {ECHO; printf("\nInvalid if elseif else as there are too many conditions in if stt in line no: %d\n", c+1);}
. ;
%%
int main(){
yyin = fopen("5.txt", "r");
yylex();
fclose(yyin);
}

//5.txt
#include<stdio.h>
int main(){
    if(a>5)    
    {printf("hi");}
    else if(a==5) 
    {printf("hello");}
    else
    {printf("sweet");}

    if(a)    
    {printf("hi");}
    else if(b>10) 
    {printf("hello");}
    else if(a!=b) 
    {printf("candy");}
    else {printf("sweet");}

    if(b)    
    {printf("hi");}
    else if(b>10) 
    {printf("hello");}
    else if(a!=b) 
    {printf("candy");}
    
    if(a>b>=d)    
    {printf("hi");}
    else if(b>10) {printf("hello");}
    else if(a!=b) {printf("candy");}
    else {printf("sweet");}

    if(g)    
    {printf("hi");}
    else if(b>10) 
    {printf("hello");}
    else if(a!=b) 
    {printf("candy");}
    else {printf("sweet");}
    else {printf("sweet");}
}
