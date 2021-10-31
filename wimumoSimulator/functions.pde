void sendOSC(float value) {
  for (int i = 0; i < 8; i++) {
    if (i == 0) {
      myMessage = new OscMessage("/wimumo001/emg/ch1");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 1) {
      myMessage = new OscMessage("/wimumo001/emg/ch2");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 2) {
      myMessage = new OscMessage("/wimumo001/emg/ch3");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 3) {
      myMessage = new OscMessage("/wimumo001/emg/ch4");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 4) {
      myMessage = new OscMessage("/wimumo001/emg/ch5");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 5) {
      myMessage = new OscMessage("/wimumo001/emg/ch6");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 6) {
      myMessage = new OscMessage("/wimumo001/emg/ch7");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    } else if (i == 7) {
      myMessage = new OscMessage("/wimumo001/emg/ch8");
      myMessage.add(value);
      oscP5.send(myMessage, myRemoteLocation);
    }
  }
} 
String currentHost() {
  try {
    String result = java.net.InetAddress.getLocalHost().getHostAddress();
    return result;
  }
  catch(Exception e) {
    return  "0.0.0.0";
  }
}
