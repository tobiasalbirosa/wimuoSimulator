import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;
OscMessage myMessage;
float byteToMB, cuenta, totalMemoryInBytes, freeMemoryInBytes;
String currentIPV4;
PImage background, icon;

void settings() {
  size(displayWidth/2, displayHeight/2);
  icon  = loadImage("icon.png");
  background  = loadImage("background.png");
}
void setup() {
  background(0);
  frameRate(12);
  textSize(24);
  image(background, width/4, height/20);
  surface.setTitle("Wimumo virtual");
  surface.setIcon(icon);
  oscP5 = new OscP5("127.0.0.1", 5000);
  currentIPV4 = currentHost();
  byteToMB =  pow(1024, 2);
  cuenta  = 1;
  myRemoteLocation = new NetAddress(currentIPV4, 53101);
  delay(2500);
}
void draw() {
  fill(255);
  background(0);
  sendOSC(cuenta);
  cuenta *= 1.2;
  if (cuenta > 3000) {
    cuenta = 1;
  }
  text("Este HOST y este PUERTO: 127.0.0.1:5000", 20, height/20);
  text("ENVIANDO OSC A IP Y PUERTO: "+currentIPV4+":53101", 20, height/20+40);
  text("FRAMES (IMAGENES POR SEGUNDO): "+frameRate, 20, height/20+80);
  totalMemoryInBytes = Runtime.getRuntime().totalMemory();
  freeMemoryInBytes = Runtime.getRuntime().freeMemory();
  text("MEGABYTES USADOS: " + (totalMemoryInBytes - freeMemoryInBytes)/ byteToMB, 20, height/20+120);
  text("MEGABYTES LIBRES: " + freeMemoryInBytes / byteToMB, 20, height/20+160);
  text("Enviando a 8 canales /wimumo001/emg/ch[numero]:\n" +cuenta, 20, height/20+200);
}
