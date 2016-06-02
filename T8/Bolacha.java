package bolacha;

public class Bolacha{
    double area;
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
}
