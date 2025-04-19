%%

%class AnalizadorLexico
%unicode
%line
%column
%type model.Yytoken

%{
package lexer;
import model.Yytoken;
%}

%%

[ \t\r\n]+                { /* ignorar espacios */ }

[0-9]+                   {
    return new Yytoken("INTEGER", yytext(), yyline + 1, yycolumn + 1);
}

"+"                     {
    return new Yytoken("PLUS", yytext(), yyline + 1, yycolumn + 1);
}

"-"                     {
    return new Yytoken("MINUS", yytext(), yyline + 1, yycolumn + 1);
}

"*"                     {
    return new Yytoken("TIMES", yytext(), yyline + 1, yycolumn + 1);
}

"/"                     {
    return new Yytoken("DIV", yytext(), yyline + 1, yycolumn + 1);
}

"("                     {
    return new Yytoken("LEFT_BRACKET", yytext(), yyline + 1, yycolumn + 1);
}

")"                     {
    return new Yytoken("RIGHT_BRACKET", yytext(), yyline + 1, yycolumn + 1);
}

";"                     {
    return new Yytoken("SEMICOLON", yytext(), yyline + 1, yycolumn + 1);
}

. {
    System.out.println("[Lex] Error léxico en (línea " + (yyline + 1) + ", columna " + (yycolumn + 1) + ")");
}