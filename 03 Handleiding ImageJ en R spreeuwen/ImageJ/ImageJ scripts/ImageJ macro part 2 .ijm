

run("Find Edges");
setBackgroundColor(0, 0, 0);
run("Clear Outside");
run("8-bit");
setOption("BlackBackground", false);
run("Make Binary");
run("Fill Holes");
run("Analyze Particles...", "show=[Overlay Outlines] display exclude clear include summarize");
selectWindow("Draw ROI");
run("Invert");
imageCalculator("Subtract create", "Draw ROI","For later");
selectWindow("Draw ROI");
close();
selectWindow("Result of Draw ROI");
