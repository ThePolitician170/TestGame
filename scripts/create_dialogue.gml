//arg 0 - messageArray
//arg 1 - Portrait to display

var sent = argument0;
var portrait = argument1;
var text = instance_create(0, 0, oDialogue);

text.portrait = portrait;

for (i = 0; i < array_length_1d(sent); i++)
{
    text.message[i] = sent[i];
}


