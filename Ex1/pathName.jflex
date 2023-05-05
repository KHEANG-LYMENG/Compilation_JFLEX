%%

%class pathName
%standalone

letter = [a-zA-Z]
digit = [0-9]
id = ({letter} | {digit})({letter} | {digit})*
PathName = {id}
FileName = {id}
FileType = {id}
Drive = {letter}
PathFileName = ({Drive}":")?("\\")?({PathName}"\\")*{FileName}("."{FileType})?
whitespace = [\t\n]+

%%
{PathFileName} {System.out.println("Correct: "+yytext());}
{whitespace} { /* Do Nothing */}