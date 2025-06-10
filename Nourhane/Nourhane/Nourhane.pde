// Print control button rectangles (Row 1)
for (int i = 0; i < buttonLabels1.length; i++) {
  println("Button " + buttonLabels1[i] + ": x=" + int(btnXs1[i]) + ", y=" + int(btnY1) +
          ", w=" + int(btnW) + ", h=" + int(btnH));
}

// Print control button rectangles (Row 2)
for (int i = 0; i < buttonLabels2.length; i++) {
  println("Button " + buttonLabels2[i] + ": x=" + int(btnXs2[i]) + ", y=" + int(btnY2) +
          ", w=" + int(btnW) + ", h=" + int(btnH));
}

// Print Quit button
println("Quit Button: x=" + int(quitX) + ", y=" + int(quitY) + ", w=" + int(quitW) + ", h=" + int(quitH));

// Print Volume button
println("Volume Button: x=" + int(volumeX) + ", y=" + int(volumeY) + ", w=" + int(volumeW) + ", h=" + int(volumeH));
