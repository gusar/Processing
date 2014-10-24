inat x = 100;
int y = 100;
int radius = 50;

size(500, 500);
ellipse(x, y, radius, radius);
ellipse(x-10, y-10, 5, 5);
ellipse(x+10, y-10, 5, 5);
ellipse(x, y, 5, 5);
line(x-10, y+10, x+10, y+10);
line(x-10, y+10, x-15, y+5);
line(x+10, y+10, x+15, y+5);
