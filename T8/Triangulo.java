package bolacha;

public class Triangulo extends Bolacha{
    private double b;
    private double h;
    private double area;
    
    public Triangulo(){
        b = 0.0;
        h = 0.0;
        super.setArea(0.0);
    }
    
    public void calcula_area_retangulo(double _b, double _h){
        area = (_b * _h) / 2;
        super.setArea(area);
    }
    
    public Triangulo(double _b, double _h){
        b = _b;
        h = _h;
        calcula_area_retangulo(b, h);
        super.p = new Ponto(b, h);
    }
}
