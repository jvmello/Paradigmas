package bolacha;

public class Retangulo extends Bolacha{
    private double x;
    private double y;
    private double area;
    
    public Retangulo(){
        x = 0.0;
        y = 0.0;
        super.setArea(0.0);
        super.p = new Ponto(0.0, 0.0);
    }
    
    public void calcula_area_retangulo(double _x, double _y){
        area = _x * _y;
        super.setArea(area);
    }
    
    public Retangulo(double _x, double _y){
        x = _x;
        y = _y;   
        calcula_area_retangulo(_x,_y);
        super.p = new Ponto(x, y);
    }
}
