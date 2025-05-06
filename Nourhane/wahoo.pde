//Library minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer player;

void setup() {
  size(400, 200); // Set the size of the window

  // Initialize Minim
  minim = new Minim(this);

  // Load the audio file (replace "MountEverest.mp3" with your file's name)
  player = minim.loadFile("MountEverest.mp3");

  // Play the audio
  player.play();
}

void draw() {
  background(0);
  fill(255);
  text("Playing 'Mount Everest' by Labrinth...", 20, 20);
}

void stop() {
  // Close the audio player when the sketch stops
  player.close();
  minim.stop();
  super.stop();
}
