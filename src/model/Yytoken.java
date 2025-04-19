package model;

public class Yytoken {
    public String tipo;
    public String lexema;
    public int linea;
    public int columna;

    public Yytoken(String tipo, String lexema, int linea, int columna){
        this.tipo = tipo;
        this.lexema = lexema;
        this.linea = linea;
        this.columna = columna;
    }

    public void errorMatch(String esperado){
        System.out.println("[Parser] Econtrado token de tipo " + tipo + " (linea " + linea + ", columna " + columna + ")");

        System.out.println("Se esperaba un token de tipo " + esperado);
    }

    public String toString(){
        return "[Lex] (" + tipo +", " + lexema + ")";

    }
}
