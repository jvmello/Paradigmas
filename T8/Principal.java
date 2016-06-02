package bolacha;

import static bolacha.Bolacha.getArea;
import static bolacha.Bolacha.getX;
import static bolacha.Bolacha.getY;
import java.text.DecimalFormat;
import java.util.*;

public class Principal {
    public static void main(String[] args){
        DecimalFormat formato = new DecimalFormat("#.##"); 
        double xmaior = 0;
        double ymaior = 0;
        double areamaior = 0;
        String tipo = "";
        String tipomaior = "";
        int i;
        ArrayList<Bolacha> bolachas = new ArrayList();
        Random gerador = new Random();
        
        for(i = 0; i < 50; i++){
            switch(gerador.nextInt(3)){
               case 0:
                    Retangulo r = new Retangulo(gerador.nextDouble() * 10, gerador.nextDouble() * 10);
                    bolachas.add(r);
                    tipo = "Retângulo";
                break;
            
                case 1:
                    Circulo c = new Circulo(gerador.nextDouble() * 10);
                    bolachas.add(c);
                    tipo = "Círculo";
                break;
            
                case 2:
                    Triangulo t = new Triangulo(gerador.nextDouble() * 10, gerador.nextDouble() * 10);
                    bolachas.add(t);
                    tipo = "Triângulo";
                break;
            }
            if(areamaior < getArea(bolachas.get(i))){
                areamaior = getArea(bolachas.get(i));
                xmaior = getX(bolachas.get(i));
                ymaior = getY(bolachas.get(i));
                tipomaior = tipo;
            }
            System.out.println("Bolacha " + (i+1) + " -> X: "+ formato.format(getX(bolachas.get(i))) + "; Y: " + formato.format(getY(bolachas.get(i))) + "; Área: " + formato.format(getArea(bolachas.get(i))) + "; Tipo: " + tipo + ".");
        }
        System.out.println("\n");
        Bolacha maior = new Bolacha();
        maior.area = areamaior;
        maior.p.x = xmaior;
        maior.p.y = ymaior;
        System.out.println("Maior bolacha ->  X: " + formato.format((maior.p.x)) + "; Y: "+ formato.format((maior.p.y)) + "; Área: " + formato.format((maior.area)) + "; Tipo: " + tipomaior + ".");
    }
}
