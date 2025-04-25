// Text: Dynamic
//
//Gobal Variables
float fontSize;
PFont appFont;
String title = "Boom! Stuning right?";
//
float titleX, titleY, titleWidth, titleHeight;
void setup() {
  //Display
  //FullScreen
size(700, 500);
int appWidth = width; //displayWidth 
int appHeight = height; //displayHeight
int shorterSide = (appWidth >= appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
 //
/*Fonts from OS
println("Start of console");
String[] fontlist = PFont.list(); 
printArray(fontlist); 
 */
 fontSize = shorterSide;
 appFont = createFont("Courier New Italic", fontSize) 
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
textFont(titlefont, fontsize);
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
text(title, titleX, titleY, titleWidth, titleHeight);
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
