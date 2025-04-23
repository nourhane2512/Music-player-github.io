// Text: Static
//
String title = "Boom! Stuning right?";
//
//Display
//fullsceen();
size(700, 500);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//
//Fonts from OS
println("Starty of console");
String[] fontlist = PFont.list(); //To list all fonts available on system
printArray(fontlist); // For listing all possible fonts to choose, then createfont
//Population
float titleX, titleY, titleWidth, titleHeight;
titleX = appWidth*1/4;
titleY = appHeight*1/4;
titleWidth = appWidth*1/2;
titleHeight = appHeight*1/10;
//
//Divs
rect(titleX, titleY, titleWidth, titleHeight);
//text(title, titleX, titleY, titleWidth, titleHeight );
