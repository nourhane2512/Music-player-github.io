// Text: Static
//
String title = "Boom! Stuning right?";
//
//Display
//fullsceen();
size(700, 500);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
int shorterSide = (appWidth > appHeight ) ? appHeight : appWidth ; //Landscape, Portrait, & Square
//
//Fonts from OS
println("Starty of console");
String[] fontlist = PFont.list(); //To list all fonts available on system
printArray(fontlist); // For listing all possible fonts to choose, then createfont
 */
Float fontSize = shorterSide; 
PFont titleFont = createFont("Georgia-Italic", fontSize);
//Tools / Create Font / Find Font / Do not Press "OK" , known bug
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
fontSize = titleHeight;
//
color pinkInk = #A992AA;
fill (pinkInk); // Ink, hexidecimal copied from color selector 
textAlign (CENTER, CENTER); // Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [ TOP | CENTER | BOTTOM | BASELINE]
textfont(titleFont, fontSize); // see variable note
color White = #FFFFFF;
fill (White)








//text(title, titleX, titleY, titleWidth, titleHeight );
