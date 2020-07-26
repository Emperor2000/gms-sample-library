if (node1reached == false) {
id.x += 0.5;
}
if (node2reached == false) {
id.x -=0.5;	
}

if (id.x >= node1pos) {
node1reached = true;
node2reached = false;
}

if (id.x <= node2pos) {
node1reached = false;
node2reached = true;
}
