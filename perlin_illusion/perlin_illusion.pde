float r = 150;
float a = 0;
float aVel = 0.0;
float aAcc = 0.001;
void setup() {
 size(500,400); 
}
void draw() {
 background(0);
 translate(width/2,height/2);
 float x = r * cos(a);
 float y = r * noise(a);
 fill(200,100,100);
 stroke(255);
// line(0,0,x,y);
 ellipse(x,y,50,50);
 a += aVel;
 aVel +=aAcc;
// aVel = constrain(aVel,0,0.09);
 
}