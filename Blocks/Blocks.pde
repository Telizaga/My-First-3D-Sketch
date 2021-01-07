float rotx,roty;

void setup(){
 size(800,800,P3D); 
}

void draw(){
  background(255);
  cube(width/2,height/2,0,#FF0000,200);
  sp(width/2-300,height/2-200,0,#0000FF,200);
}

void sp(float x,float y,float z,color c,float size){
  pushMatrix();
  translate(x,y,z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  stroke(0);
  strokeWeight(3);
  sphere(size);
  popMatrix();
}

void cube(float x,float y,float z,color c,float size){
  pushMatrix();
  translate(x,y,z);
  fill(c);
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  stroke(0);
  strokeWeight(3);
  box(size);
  popMatrix();
}

void mouseDragged(){
  rotx = rotx+(pmouseY - mouseY)*0.01;
  roty = roty+(pmouseX - mouseX)*-0.01;
}
