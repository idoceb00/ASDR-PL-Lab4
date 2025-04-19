/*-------------------------*/
/* Analizador Léxico - Lab4*/
/*------------------------*/

import model.Yytoken;%%

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

/* ---------- Definiciones de patrones ---------- */

DIGITO      = [0-9]+
ESPACIO     = [ \t\r\n]+
SUMA        = \+
RESTA       = \-
MULT        = \*
DIVISION    = /
PIZQ        = \(
PDER        = \)
PUNTOCOMA   = ;

%%

{ESPACIO}   { /* Ignorar espacios en blanco */ }

{DIGITO}    {
    return new Yytoken("INTEGER", yytext(), yyline + 1, yycolumn + 1);
}

{SUMA}      {
    return new Yytoken("PLUS", yytext(), yyline + 1, yycolumn + 1);
}

{RESTA}     {
    return new Yytoken("MINUS", yytext(), yyline + 1, yycolumn + 1);
}

{MULT}      {
    return new Yytoken("TIMES", yytext(), yyline + 1, yycolumn + 1);
}

{DIVISION}  {
    return new Yytoken("DIV", yytext(), yyline + 1, yycolumn + 1);
}

{PIZQ}      {
    return new Yytoken("LEFT_BRACKET", yytext(), yyline + 1, yycolumn + 1);
}

{PDER}      {
    return new Yytoken("RIGHT_BRACKET", yytext(), yyline + 1, yycolumn + 1);
}

{PUNTOCOMA} {
    return new Yytoken("SEMICOLON", yytext(), yyline + 1, yycolumn + 1);
}

/* Error léxico: cualquier otra cosa */
.           {
    System.out.println("[Lex] Error léxico en (línea " + (yyline + 1) + ", columna " + (yycolumn + 1) + ")");
}