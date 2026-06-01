%pointer
%option noyywrap

%{
#include <stdio.h>
%}

%%

/* Constante hexadecimal */
0[xX][0-9A-Fa-f]+ {
    printf("constante hexadecimal: %s\n", yytext);
}

/* Constante octal */
0[0-7]* {
    printf("constante octal: %s\n", yytext);
}

/* Constante decimal */
[1-9][0-9]* {
    printf("constante decimal: %s\n", yytext);
}

/* Identificador */
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("identificador: %s\n", yytext);
}

/* Ignorar espacios */
[ \t\n] {
}

/* Comodín */
. {
    printf("caracter no reconocido: %s\n", yytext);
}

%%

int main(void) {
    yylex();
    return 0;
}