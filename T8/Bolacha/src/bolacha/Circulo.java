package bolacha;

public class Circulo extends Bolacha{
    private double raio;
    private double area;
    
    public Circulo(){
        raio = 0.0;
        super.setArea(0.0);
    }
    
    public void calcula_area_circulo(double _r){
        area = Math.PI * _r * _r;
        super.setArea(area);
    }
    
    public Circulo(double _r){
        raio = _r;
        calcula_area_circulo(raio);
        super.p = new Ponto(raio*2, raio*2);
    }
}
