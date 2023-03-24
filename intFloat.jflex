%%

%class intFloat
%standalone

real = [1-9][0-9]*"."[0-9][0-9]* | 0?"."[0-9][0-9]*
integer = [1-9][0-9]*

%%

{integer} {System.out.println("Integer: "+ yytext() );}
{real} {System.out.println("Real: "+ yytext() );}