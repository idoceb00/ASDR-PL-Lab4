import lexer.AnalizadorLexico;
import model.Yytoken;

import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) {
        try {
            FileReader reader = new FileReader("input/entrada.txt");
            AnalizadorLexico lexer = new AnalizadorLexico(reader);

            Yytoken token;
            while ((token = lexer.yylex()) != null) {
                System.out.println(token);
            }

        } catch (IOException e) {
            System.err.println("Error al leer el archivo: " + e.getMessage());
        }
    }
}