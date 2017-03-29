//Update curActorBox and turnOrderBoxes

//Turn order boxes should be in order from next to last...
var j = 1;
for(i = 0; i < 5; i++) {
       
    //Check for next turn
    //If it's the last actor's turn then go back to beginning
    var next = turnCounter + j;
    if(next >= turnMax) {
        next = next - turnMax;
    }
    
    //Get the turn order box obj which should be 0 for first
    box = ds_list_find_value(turnOrderBoxes, i);
    
    //Change the state to start transition
    box.state = "trans";
    //Get the next actor in turn order which should be 2 for first
    box.nextActor = ds_list_find_value(turnOrder, next);
    
    j++;
}

//Tranistion and ready the next actor for the box
curActorBox.state = "trans";
curActorBox.nextActor = currentActor;


