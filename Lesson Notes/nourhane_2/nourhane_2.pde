//Dynamic not Static 
//
//Library -Minim\
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//
//Global Variables
//
float X, Y, Width, Height;
float imageX, imageY, imageWidth, imageHeight;
float topdisplayX, topdisplayY, topdisplayWidth, topdisplayHeight;
float titleX, titleY, titleWidth, titleHeight;
float quitX, quitY, quitWidth, quitHeight;
float stopX, stopY, stopWidth, stopHeight;
float fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight;
float fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight;
float shuffleX, shuffleY, shuffleWidth, shuffleHeight;
float nextX, nextY, nextWidth, nextHeight;
float previousX, previousY, previousWidth, previousHeight;
float soundX, soundY, soundWidth, soundHeight;
float muteX, muteY, muteWidth, muteHeight;
float looponceX, looponceY, looponceWidth, looponceHeight;
float pauseX, pauseY, pauseWidth, pauseHeight;
float loopinfiniteX, loopinfiniteY, loopinfiniteWidth, loopinfiniteHeight;
float playX, playY, playWidth, playHeight;
float timebarX, timebarY, timebarWidth, timebarHeight;
float songartistX, songartistY, songartistWidth, songartistHeight;
//Button variables

void setup() {
  fullScreen();//displayWidth, displayheight
  
  int appWidth = displayWidth;
  int appHeight = displayHeight;
   
  X =  appWidth * 0.20;
  Y = appHeight * 0.220;
  Width = appWidth * 0.19;
  Height = appHeight * 0.20;
  
  imageX = appWidth * 0.1125;
  imageY = appHeight * 0.42;
  imageWidth = appWidth * 0.6875; 
  imageHeight = appHeight * 0.2455;
  
  topdisplayX= appWidth * 0.224;
  topdisplayY= appHeight * 0.2654;
  topdisplayWidth = appWidth * 0.3449;
  topdisplayHeight = appHeight * 0.128;
  
  titleX = appWidth * 0.309;
  titleY = appHeight * 0.42;
  titleWidth = appWidth * 0.138;
  titleHeight = appHeight * 0.24;
  
  quitX = appWidth - (appWidth * 0.126);
  quitY = appHeight * 0.0;
  quitWidth = appWidth * 0.126;
  quitHeight = appHeight * 0.100;
  
  stopX = appWidth * 0.1387;
  stopY = appHeight * 0.80;
  stopWidth = appWidth * 0.100;
  stopHeight = appHeight * 0.100;
  
  fastforwardX = appWidth * 0.50;
  fastforwardY = appHeight * 0.50;
  fastforwardWidth = appWidth * 0.150;
  fastforwardHeight = appHeight * 0.100;
  
  fastreverseX = appWidth * 0.170;
  fastreverseY = appHeight * 0.820;
  fastreverseWidth = appWidth * 0.25;
  fastreverseHeight = appHeight * 0.28;
  
  shuffleX = appWidth * 0.30;
  shuffleY = appHeight * 0.240;
  shuffleWidth = appWidth * 0.120;
  shuffleHeight = appHeight * 0.320;
  
  nextX = appWidth * 0.180;
  nextY = appHeight * 0.270;
  nextWidth = appWidth * 0.160;
  nextHeight = appHeight * 0.420;
  
  previousX = appWidth * 0.1240;
  previousY = appHeight * 0.80;
  previousWidth = appWidth * 0.120;
  previousHeight = appHeight * 0.80;
  
  soundX =  appWidth * 0.230;
  soundY = appHeight * 0.440;
  soundWidth = appWidth * 0.2180;
  soundHeight = appHeight * 0.190;
  
  muteX = appWidth * 0.620;
  muteY = appHeight * 0.120;
  muteWidth = appWidth * 0.820;
  muteHeight = appHeight * 0.120;
  
  looponceX = appWidth * 0.200;  
  looponceY = appHeight * 0.80;
  looponceWidth = appWidth * 0.100;
  looponceHeight = appHeight * 0.100;
  
  pauseX = appWidth * 0.500; 
  pauseY = appHeight * 0.80;
  pauseWidth = appWidth * 0.100;
  pauseHeight = appHeight * 0.100;
  
  loopinfiniteX = appWidth * 0.300;
  loopinfiniteY = appHeight * 0.80;
  loopinfiniteWidth = appWidth * 0.100;
  loopinfiniteHeight = appHeight * 0.100;
  
  playX = appWidth * 0.400;
  playY = appHeight * 0.80;
  playWidth = appWidth * 0.100;
  playHeight = appHeight * 0.100;
  
  timebarX = appWidth * 0.600;
  timebarY = appHeight * 0.60;
  timebarWidth = appWidth * 0.120;
  timebarHeight = appHeight * 0.120;
  
  songartistX =  appWidth * 0.120;
  songartistY = appHeight * 0.70;
  songartistWidth = appWidth * 0.120;
  songartistHeight = appHeight * 0.120;
  //
 
  println(quitX, quitY, quitWidth, quitHeight);
  println(stopX, stopY, stopWidth, stopHeight);
  
  //Display
  //
   rect(quitX, quitY, quitWidth, quitHeight);
   rect(stopX, stopY, stopWidth, stopHeight);
   rect(fastforwardX, fastforwardY, fastforwardWidth, fastforwardHeight);
   //rect(fastreverseX, fastreverseY, fastreverseWidth, fastreverseHeight);
   //rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
   //rect(muteX, muteY, muteWidth, muteHeight);
   //rect(nextX, nextY, nextWidth, nextHeight);
   rect(looponceX, looponceY, looponceWidth, looponceHeight);
   rect(loopinfiniteX, loopinfiniteY, loopinfiniteWidth, loopinfiniteHeight);
   rect(timebarX, timebarY, timebarWidth, timebarHeight);
   //rect(soundX, soundY, soundWidth, soundHeight);
   rect(imageX, imageY, imageWidth, imageHeight);
   //rect(titleX, titleY, titleWidth, titleHeight);
   //rect(previousX, previousY, previousWidth, previousHeight);
   rect(playX, playY, playWidth, playHeight);
   //rect(topdisplayX, topdisplayY, topdisplayWidth, topdisplayHeight);
   rect(pauseX, pauseY, pauseWidth, pauseHeight);
   //rect(songartistX, songartistY, songartistWidth, songartistHeight);
//
}
//
void draw() {}
//
void mousePressed() {}
//
void KeyPressed() {}
//
`//End MAIN Program
