/* ****************************************************
 * Feel free to modify the code any way you seem fit. *******************
 * I do ask that you add me the orginal author to the finished project, *
 * this could be in the comments or even a function named after me. *****
 * Author: Charles Eudy *********************************************
 * Date: 7/28/2017      *
 * Language: p5 JS      *
 * Version: 1.01        *
 * Thank you and Enjoy! *
 ************************
 */


float angle;
float r = 200;

//Gale Crater latitude and longitude
//4.5 degrees south latitude, 137.4 degrees east longitude
float lon = 137.4;
float lat = -4.5;

PImage mars;
PShape globe;

void setup(){
  size(600,600, P3D);
  mars = loadImage("mars.jpg");
  noStroke();
  globe = createShape(SPHERE, r);
  globe.setTexture(mars);
}

void draw(){
  background(51);
  translate(width*0.5, height*0.5);
  rotateY(angle);
  angle += 0.01;
  lights();
  //fill(231,125,17);
  noStroke();
  //float r = 200;
  //sphere(r);
  shape(globe);
  
  float theta = radians(lat) + PI/2;
  float phi = radians(lon) + PI;
  float x = r * sin(theta) * cos(phi);
  float y = r * sin(theta) * sin(phi);
  float z = r * cos(theta);
  
  translate(x,y,z);
  fill(255,0,0);
  box(10);
}