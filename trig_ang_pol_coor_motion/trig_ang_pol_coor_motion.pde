float r = 150;
float a = 0;
float aVel = 0.0;
float aAcc = 0.01;
void setup() {
 size(600,400); 
}
void draw() {
 background(0);
 translate(width/2,height/2);
 float x = r * cos(a);
 float y = r * sin(a);
 fill(255);
 stroke(255);
 line(0,0,x,y);
 ellipse(x,y,50,50);
 a += aVel;
 aVel +=aAcc;
 
}