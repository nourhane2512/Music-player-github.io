//Library minim 
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Text: Dynamic
//
//Gobal Variables
Minim minim;
int numberOfSongs = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO
//
float musicMenuX, musicMenuY, musicMenuWidth, musicMenuHeight;
//
void setup() {
//Dispaly


float fontSize;
PFont appFont;
String title = "Boom! Stuning right?";
//
float titleX, titleY, titleWidth, titleHeight;
  //Display
  //FullScreen
size(700, 500);
int appWidth = width; //displayWidth 
int appHeight = height; //displayHeight
int shorterSide = (appWidth >= appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
 //
 minim = new Minim(this);
 String musicPathway = "Music/";
 String song = "Mount Everest - Labrinth";
 String fileExtensions_mp3 = ".mp3";
 String musicDirectory = "../../../../" + musicPathway;
 String file = musicDirectory + song + fileExtensions_mp3;
 println( file);
 playList[ currentSong ] = minim.loadFile( file );
 playListMetaData[currentSong] = playList[currentSong].getMetaData();
 playList[currentSong].play();
 //
/*Fonts from OS
println("Start of console");
String[] fontlist = PFont.list(); 
printArray(fontlist); 
 */
 fontSize = shorterSide;
 appFont = createFont("Courier New Italic", fontSize);
 //Tools / Create Font / Find Font / Do not Press "OK" , known bug ( not loadFont() )
 //Population
float titleX, titleY, titleWidth, titleHeight; 
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth = appWidth*1/2;
titleHeight = appHeight*1/10;
//
//Divs
rect(titleX, titleY, titleWidth, titleHeight);
//
//Font Size Algorithm
float CourierNewItalicAspectRatio = 1.04; //AR = fontsize / rect(Height), unique for each font
fontSize = titleHeight * CourierNewItalicAspectRatio;
textFont(appfont, fontsize);
println(textWidth(title) > titleWidth );
while (textWidth(title) > titleWidth) {
  fontSize = fontSize * 0.50;
  println(textWidth(title), titleWidth);
}
//
//code before Drawing Text
color pinkInk = #A992AA;
fill (pinkInk); // Ink, hexidecimal copied from color selector 
textAlign (CENTER, CENTER); // Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); // see variable note 
//textFont() has option to combine font declaration with textSize()
//Drawing Text
text( playListMetaData[currentsong]title, titleX, titleY, titleWidth, titleHeight);
color whiteInk = #FFFFFF;
fill(whiteInk); //reset
//
} // End Setup 
//
void draw() {
  //Empty Draw
} //End Draw
//
void mousePressed() {} //End Mousse Pressed
//
void KeyPressed() {} //End Key Pressed
//
//End of Main
