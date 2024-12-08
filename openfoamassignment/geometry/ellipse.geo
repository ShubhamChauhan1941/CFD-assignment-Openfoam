//+
Point(1) = {0, 0, 0, 0.6};
//+
Point(2) = {15, 0, 0, 0.6};
//+
Point(3) = {15, 10, 0, 0.6};
//+
Point(4) = {0, 10, 0, 0.6};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Point(5) = {2.5, 5, 0, 0.1};
//+
Point(6) = {2, 5, 0, 0.1};
//+
Point(7) = {3, 5, 0, 0.1};
//+
Point(8) = {2.5, 6, 0, 0.1};
//+
Point(9) = {2.5, 4, 0, 0.1};
//+
Ellipse(5) = {9, 5, 9, 7};
//+
Ellipse(6) = {8, 5, 8, 7};
//+
Ellipse(7) = {8, 5, 8, 6};
//+
Ellipse(8) = {9, 5, 9, 6};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {7, -8, 5, -6};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1}; 
  Layers{1};
  Recombine;
}

//+
Physical Surface("inlet", 51) = {25};
//+
Physical Surface("outlet", 52) = {33};
//+
Physical Surface("top", 53) = {21};
//+
Physical Surface("bottom", 54) = {29};
//+
Physical Surface("frontback", 55) = {50, 1};
//+
Physical Surface("ellipse", 56) = {49, 37, 41, 45};
//+
Physical Volume("fluid", 57) = {1};
