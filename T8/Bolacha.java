package bolacha;

import java.util.*;

public class Bolacha{
    private double area;
    Ponto p;
    
    public void Bolacha(){
        this.p = new Ponto();
    }
    
    public void Bolacha(double x, double y){
        this.p = new Ponto(x,y);
    }
    
    public void setArea(double a){
        this.area = a;
    }
    
    static double getArea(Bolacha b){
        return b.area;
    }
    
    static double getX(Bolacha b){
        return b.p.x;
    }
    
    static double getY(Bolacha b){
        return b.p.y;
    }
    
    public static void main(String[] args){
        double xmaior = 0;
        double ymaior = 0;
        double areamaior = 0;
        int i;
        Bolacha maior = new Bolacha();
        maior.area = 0;
        maior.p.x = 0;
        maior.p.y = 0;
        ArrayList<Bolacha> bolachas = new ArrayList();
        Random gerador = new Random();
        
        for(i = 0; i < 50; i++){
            switch(gerador.nextInt(3)){
               case 0:
                    Retangulo r = new Retangulo(gerador.nextDouble() * 10, gerador.nextDouble() * 10);
                    bolachas.add(r);
                break;
            
                case 1:
                    Circulo c = new Circulo(gerador.nextDouble() * 10);
                    bolachas.add(c);
                break;
            
                case 2:
                    Triangulo t = new Triangulo(gerador.nextDouble() * 10, gerador.nextDouble() * 10);
                    bolachas.add(t);
                break;
            }
            if(areamaior < getArea(bolachas.get(i))){
                areamaior = getArea(bolachas.get(i));
                xmaior = getX(bolachas.get(i));
                ymaior = getY(bolachas.get(i));
                //System.out.println("Maior X: "+ getX(maior) +" Y: "+ getY(maior) + " Area: " + getArea(maior));
            }
            System.out.println("Ok "+ getX(bolachas.get(i)) + " " + getY(bolachas.get(i)) + ": " + getArea(bolachas.get(i)));
            
        }
        System.out.println("Maior X: "+ xmaior +" Y: "+ ymaior + " Area: " + areamaior);
    }
}
