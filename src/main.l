
%{
#include <stdio.h>
%}


%%

\n	;
[A-Za-z0-9][A-Za-z0-9\_\.\-]*[A-Za-z0-9]@[A-Za-z0-9][A-Za-z0-9\_\.\-]*[A-Za-z0-9][\_\-]+	;
[A-Za-z0-9][A-Za-z0-9\_\.\-]*[A-Za-z0-9]@[A-Za-z0-9][A-Za-z0-9\_\.\-]*[A-Za-z0-9]	printf("%s\n", yytext);
[A-Za-z0-9]+@[A-Za-z0-9]+	printf("%s\n", yytext);
.	;
%%

int main() {
  yylex();
  return 0;
}
