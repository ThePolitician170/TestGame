//finds the manhattan distance between two points
//arg0 - Target node
//arg1 - current node

goal = argument0;
node = argument1;

temp = abs(goal.gridX - node.gridX) + abs(goal.gridX - node.gridY);

return temp;

