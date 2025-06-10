// Main Music Program - Detailed Custom Button Design (Quit button fixed)

import ddf.minim.*;

float imageX, imageY, imageWidth, imageHeight;
float titleX, titleY, titleWidth, titleHeight;
float artistX, artistY, artistWidth, artistHeight;
float timebarX, timebarY, timebarWidth, timebarHeight;
float timePositionX, timePositionY, timePositionW, timePositionH;

// Control rows variables
float btnW, btnH, btnY1, btnY2, btnMargin;
float[] btnXs1, btnXs2;
String[] buttonSymbols1 = { "⏹", "*", "▶", "⏸", "⏭", "⏩" };
String[] buttonLabels1  = { "Stop", "Previous", "Play", "Pause", "Next", "Forward" };
String[] buttonSymbols2 = { "⏪", "🔀", "🔂", "🔁", "🔇", "🖼️" };
String[] buttonLabels2  = { "Reverse", "Shuffle", "Loop 1", "Loop ∞", "Mute", "Display" };

float volumeX, volumeY, volumeW, volumeH;
float quitX, quitY, quitW, quitH;

void setup() {
  fullScreen();
  int appWidth = displayWidth;
  int appHeight = displayHeight;

  // IMAGE - bigger and centered
  imageWidth = appWidth * 0.40;
  imageHeight = appHeight * 0.28;
  imageX = appWidth/2 - imageWidth/2;
  imageY = appHeight * 0.27;

  // TITLE & ARTIST - above image, side by side
  titleWidth = imageWidth * 0.52;
  titleHeight = appHeight * 0.06;
  artistWidth = imageWidth * 0.40;
  artistHeight = titleHeight;
  titleX = appWidth/2 - (titleWidth + artistWidth + appWidth * 0.02)/2;
  titleY = imageY - titleHeight - appHeight * 0.04;
  artistX = titleX + titleWidth + appWidth * 0.02;
  artistY = titleY;

  // TIME BAR - under image
  timebarWidth = imageWidth * 0.90;
  timebarHeight = appHeight * 0.045;
  timebarX = appWidth/2 - timebarWidth/2 + appWidth*0.06;
  timebarY = imageY + imageHeight + appHeight * 0.04;

  // TIME POSITION - left of timebar
  timePositionW = appWidth * 0.07;
  timePositionH = timebarHeight;
  timePositionX = timebarX - timePositionW - appWidth * 0.01;
  timePositionY = timebarY;

  // CONTROL BUTTONS - now two rows under timebar
  btnW = appWidth * 0.10;
  btnH = appHeight * 0.09;
  btnMargin = appWidth * 0.012;

  int btnCount1 = buttonSymbols1.length;
  int btnCount2 = buttonSymbols2.length;

  float totalBtnWidth1 = btnCount1*btnW + (btnCount1-1)*btnMargin;
  float totalBtnWidth2 = btnCount2*btnW + (btnCount2-1)*btnMargin;
  float startX1 = appWidth/2 - totalBtnWidth1/2;
  float startX2 = appWidth/2 - totalBtnWidth2/2;

  btnY1 = timebarY + timebarHeight + appHeight * 0.04;
  btnY2 = btnY1 + btnH + appHeight * 0.03;

  btnXs1 = new float[btnCount1];
  btnXs2 = new float[btnCount2];
  for (int i=0; i<btnCount1; i++) {
    btnXs1[i] = startX1 + i*(btnW+btnMargin);
  }
  for (int i=0; i<buttonSymbols2.length; i++) {
    btnXs2[i] = startX2 + i*(btnW+btnMargin);
  }

  // VOLUME - end of second row (right side)
  volumeW = appWidth * 0.10;
  volumeH = btnH;
  volumeX = btnXs2[btnCount2-1] + btnW + btnMargin*2;
  volumeY = btnY2;

  // QUIT BUTTON - top right, normal size
  quitW = appWidth * 0.08;
  quitH = appHeight * 0.07;
  quitX = appWidth - quitW - appWidth*0.02;
  quitY = appHeight * 0.02;

  textAlign(CENTER, CENTER);
}

void draw() {
  background(240);

  // Quit button (top right, normal shape, with symbol only)
  drawQuitButton(quitX, quitY, quitW, quitH);

  // TITLE and ARTIST (above image, side by side)
  textSize(26);
  drawDetailButton(titleX, titleY, titleWidth, titleHeight, "🎵", "Song Title");
  drawDetailButton(artistX, artistY, artistWidth, artistHeight, "🎤", "Song Artist");

  // IMAGE placeholder (album art)
  fill(220);
  stroke(140,140,180);
  strokeWeight(4);
  rect(imageX, imageY, imageWidth, imageHeight, 22);
  fill(70,70,140);
  textSize(32);
  text("Album Art", imageX+imageWidth/2, imageY+imageHeight/2);

  // TIME POSITION (left of timebar)
  textSize(26);
  drawDetailButton(timePositionX, timePositionY, timePositionW, timePositionH, "⏱️", "01:23");

  // TIME BAR
  fill(255);
  stroke(120);
  strokeWeight(2);
  rect(timebarX, timebarY, timebarWidth, timebarHeight, 14);
  fill(40,80,180);
  textSize(18);
  text("03:45", timebarX+timebarWidth/2, timebarY+timebarHeight/2);

  // CONTROL BUTTONS - row 1 (symbols + labels)
  textSize(40);
  for (int i=0; i<buttonSymbols1.length; i++) {
    drawDetailButton(btnXs1[i], btnY1, btnW, btnH, buttonSymbols1[i], buttonLabels1[i]);
  }
  // CONTROL BUTTONS - row 2 (symbols + labels)
  for (int i=0; i<buttonSymbols2.length; i++) {
    drawDetailButton(btnXs2[i], btnY2, btnW, btnH, buttonSymbols2[i], buttonLabels2[i]);
  }

  // VOLUME (slider style for now, right of row 2)
  textSize(36);
  drawDetailButton(volumeX, volumeY, volumeW, volumeH, "🔊", "Volume");
}

void drawQuitButton(float x, float y, float w, float h) {
  // Shadow
  fill(180, 30);
  noStroke();
  rect(x+4, y+6, w, h, 14);

  // Button background (red gradient)
  for (int i=0; i<h; i++) {
    float inter = map(i, 0, h, 0, 1);
    int c = lerpColor(color(255,120,120), color(180,0,0), inter);
    stroke(c);
    line(x, y+i, x+w, y+i);
  }
  // Button border
  noFill();
  stroke(120,10,10);
  strokeWeight(3);
  rect(x, y, w, h, 14);

  // Symbol (large)
  fill(255);
  noStroke();
  textSize(h*0.7);
  text("❌", x + w/2, y + h/2);
}

void drawDetailButton(float x, float y, float w, float h, String symbol, String label) {
  // Shadow
  fill(180, 30);
  noStroke();
  rect(x+4, y+6, w, h, 14);

  // Button background (gradient)
  for (int i=0; i<h; i++) {
    float inter = map(i, 0, h, 0, 1);
    int c = lerpColor(color(255), color(220,230,255), inter);
    stroke(c);
    line(x, y+i, x+w, y+i);
  }
  // Button border
  noFill();
  stroke(80,80,120);
  strokeWeight(2);
  rect(x, y, w, h, 14);

  // Symbol (large)
  fill(50, 60, 120);
  noStroke();
  textSize(h*0.55);
  text(symbol, x + w/2, y + h*0.48);

  // Label (smaller, below)
  textSize(h*0.22);
  fill(60,70,100,180);
  text(label, x + w/2, y + h*0.80);
}

void mousePressed() {
  // Quit button
  if (mouseX > quitX && mouseX < quitX + quitW && mouseY > quitY && mouseY < quitY + quitH) {
    println("Quit button clicked!");
    exit();
  }

  // Row 1 buttons
  for (int i = 0; i < buttonSymbols1.length; i++) {
    if (mouseX > btnXs1[i] && mouseX < btnXs1[i] + btnW && mouseY > btnY1 && mouseY < btnY1 + btnH) {
      println("Button clicked: " + buttonLabels1[i]);
    }
  }

  // Row 2 buttons
  for (int i = 0; i < buttonSymbols2.length; i++) {
    if (mouseX > btnXs2[i] && mouseX < btnXs2[i] + btnW && mouseY > btnY2 && mouseY < btnY2 + btnH) {
      println("Button clicked: " + buttonLabels2[i]);
    }
  }

  // Volume button
  if (mouseX > volumeX && mouseX < volumeX + volumeW && mouseY > volumeY && mouseY < volumeY + volumeH) {
    println("Volume button clicked!");
  }
}
