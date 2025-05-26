// Library - Minim
import ddf.minim.*;

// Global Variables
float quitX, quitY, quitWidth, quitHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX, playY, playWidth, playHeight;
float pauseX, pauseY, pauseWidth, pauseHeight;
float nextX, nextY, nextWidth, nextHeight;
float previousX, previousY, previousWidth, previousHeight;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float shuffleX, shuffleY, shuffleWidth, shuffleHeight;
float fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight;
float fastReverseX, fastReverseY, fastReverseWidth, fastReverseHeight;
float imageX, imageY, imageSize; // Image button

// Minim Variables
Minim minim;
AudioPlayer player;
String[] songs = {"JazzLounge.mp3"}; // Add your jazz song here
int currentSongIndex = 0;

// Image Variable
PImage jazzBackground;

void setup() {
  size(800, 600); // Fixed window size
  
  // Load the jazz lounge burgundy picture
  jazzBackground = loadImage("jazz_lounge.jpg"); // Add your image file to the `data` folder
  
  // Button positions and sizes
  quitX = 700; quitY = 20; quitWidth = 80; quitHeight = 40;
  stopX = 50; stopY = 500; stopWidth = 80; stopHeight = 40;
  playX = 150; playY = 500; playWidth = 80; playHeight = 40;
  pauseX = 250; pauseY = 500; pauseWidth = 80; pauseHeight = 40;
  nextX = 350; nextY = 500; nextWidth = 80; nextHeight = 40;
  previousX = 450; previousY = 500; previousWidth = 80; previousHeight = 40;
  loopOnceX = 550; loopOnceY = 500; loopOnceWidth = 80; loopOnceHeight = 40;
  loopInfiniteX = 650; loopInfiniteY = 500; loopInfiniteWidth = 80; loopInfiniteHeight = 40;
  shuffleX = 50; shuffleY = 550; shuffleWidth = 80; shuffleHeight = 40;
  fastForwardX = 150; fastForwardY = 550; fastForwardWidth = 80; fastForwardHeight = 40;
  fastReverseX = 250; fastReverseY = 550; fastReverseWidth = 80; fastReverseHeight = 40;

  // Image button (centered in the middle of the screen)
  imageSize = 150; // Slightly larger size
  imageX = width / 2 - imageSize / 2;
  imageY = height / 2 - imageSize / 2;

  // Initialize Minim
  minim = new Minim(this);
  player = minim.loadFile(songs[currentSongIndex]);
}

void draw() {
  // Draw the jazz lounge burgundy background
  background(128, 0, 32); // Fallback burgundy color
  if (jazzBackground != null) {
    image(jazzBackground, 0, 0, width, height);
  }
  
  // Draw buttons
  fill(255); // White buttons
  rect(quitX, quitY, quitWidth, quitHeight); // Quit button
  rect(stopX, stopY, stopWidth, stopHeight); // Stop button
  rect(playX, playY, playWidth, playHeight); // Play button
  rect(pauseX, pauseY, pauseWidth, pauseHeight); // Pause button
  rect(nextX, nextY, nextWidth, nextHeight); // Next button
  rect(previousX, previousY, previousWidth, previousHeight); // Previous button
  rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight); // Loop Once button
  rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight); // Loop Infinite button
  rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight); // Shuffle button
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight); // Fast Forward button
  rect(fastReverseX, fastReverseY, fastReverseWidth, fastReverseHeight); // Fast Reverse button
  rect(imageX, imageY, imageSize, imageSize); // Image button
  
  // Draw symbols inside buttons
  fill(0); // Black symbols for contrast
  textSize(20);
  textAlign(CENTER, CENTER);
  text("X", quitX + quitWidth / 2, quitY + quitHeight / 2); // Quit button symbol
  text("", stopX + stopWidth / 2, stopY + stopHeight / 2); // Stop
  text("▶", playX + playWidth / 2, playY + playHeight / 2); // Play
  text("| |", pauseX + pauseWidth / 2, pauseY + pauseHeight / 2); // Pause
  text("⏭", nextX + nextWidth / 2, nextY + nextHeight / 2); // Next
  text("⏮", previousX + previousWidth / 2, previousY + previousHeight / 2); // Previous
  text("🔂", loopOnceX + loopOnceWidth / 2, loopOnceY + loopOnceHeight / 2); // Loop Once
  text("🔁", loopInfiniteX + loopInfiniteWidth / 2, loopInfiniteY + loopInfiniteHeight / 2); // Loop Infinite
  text("🔀", shuffleX + shuffleWidth / 2, shuffleY + shuffleHeight / 2); // Shuffle
  text("⏩", fastForwardX + fastForwardWidth / 2, fastForwardY + fastForwardHeight / 2); // Fast Forward
  text("⏪", fastReverseX + fastReverseWidth / 2, fastReverseY + fastReverseHeight / 2); // Fast Reverse
  text("🖼", imageX + imageSize / 2, imageY + imageSize / 2); // Image button symbol
}

void mousePressed() {
  // Quit button
  if (mouseX > quitX && mouseX < quitX + quitWidth && mouseY > quitY && mouseY < quitY + quitHeight) {
    exit();
  }
  
  // Stop button
  if (mouseX > stopX && mouseX < stopX + stopWidth && mouseY > stopY && mouseY < stopY + stopHeight) {
    player.pause();
    player.rewind();
  }
  
  // Play button
  if (mouseX > playX && mouseX < playX + playWidth && mouseY > playY && mouseY < playY + playHeight) {
    player.play();
  }
  
  // Pause button
  if (mouseX > pauseX && mouseX < pauseX + pauseWidth && mouseY > pauseY && mouseY < pauseY + pauseHeight) {
    player.pause();
  }
  
  // Next button
  if (mouseX > nextX && mouseX < nextX + nextWidth && mouseY > nextY && mouseY < nextY + nextHeight) {
    nextSong();
  }
  
  // Previous button
  if (mouseX > previousX && mouseX < previousX + previousWidth && mouseY > previousY && mouseY < previousY + previousHeight) {
    previousSong();
  }
  
  // Image button
  if (mouseX > imageX && mouseX < imageX + imageSize && mouseY > imageY && mouseY < imageY + imageSize) {
    println("Image button clicked!");
  }
}

void nextSong() {
  player.pause();
  player.close();
  currentSongIndex = (currentSongIndex + 1) % songs.length;
  player = minim.loadFile(songs[currentSongIndex]);
  player.play();
}

void previousSong() {
  player.pause();
  player.close();
  currentSongIndex = (currentSongIndex - 1 + songs.length) % songs.length;
  player = minim.loadFile(songs[currentSongIndex]);
  player.play();
}

void stop() {
  player.close();
  minim.stop();
  super.stop();
}
