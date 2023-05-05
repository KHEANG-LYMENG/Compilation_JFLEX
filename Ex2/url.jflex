%%

%class url
%standalone

letter = [a-zA-Z]
digit = [0-9]
hex = ([A-F0-9] | [A-F0-9]{2})
scheme = {letter}{letter}*":"
offset = ({digit} | [1-9]{digit} | 1{digit}{2} | 2[0-4]{digit} | 25[0-5])
ip = {offset}(\.{offset}){3}
id = ({letter} | {digit})({letter} | {digit})*
domain = {id}
fileName = {id}
fileType = {id}
pathName = {id}
anchorName = {id}
url = ({scheme}"//")?((({domain}".")*("com" | {letter}{letter}*)) | {ip})("/")?(":"{digit}{3,4})?("/")?("%"{hex})?({pathName}"/")*({fileName}"."{fileType})?("#"{anchorName})?
whitespace = [\t\n]+

%%
{url} {System.out.println("Correct: "+yytext());}
{whitespace} { /* Do Nothing */}