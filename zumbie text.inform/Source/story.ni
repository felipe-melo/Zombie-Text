"zombie text" by "Felipe Melo, Herbert Salazar, Thiago Damasceno e Rodolpho Rosa"

Use American dialect, full-length room descriptions, and the serial comma.

Chapter 1 Geography

Section 1.1 The Build

Porch is a room. "porch description".
Reception is a room. "reception description".
Entry Hall is a room. "Hall 1 description".
Rest room is a room. "Rest room description".
Lab is a room. "Lab description".
Back Hall is a room. "Hall 2 description".
Refectory is a room. "Refectory description".

Main door is a door. It is north of Porch and south of Reception. Main door is closed.
Hall door 1 is a door. It is north of Reception and south of Entry Hall. Hall door 1 is closed and locked.
Rest door is a door. It is east of Entry Hall and west of Rest Room. Rest door is closed and locked.
Lab door is a door. It is north of Entry Hall and south of Lab. Lab door is closed.
Hall door 2 is a door. It is north of Lab and south of Back Hall. Hall door 2 is closed.
Refectory door is a door. It is east of Back Hall and west of Refectory. Refectory door is closed and locked.

The matching key of the Hall door 1 is The Crowbar.
The matching key of the Rest door is Green key.
The matching key of the Refectory door is Red key.

instead of opening Rest door:
	if the Zombie 1 is dead:
		continue the action;
	otherwise:
		say "The zombie tries to attack you!"

Chapter 2 Characters

Player is in Porch.

Ada Lovelace is a woman in the Refectory. The description is "Ada description".

Charles Babbage is man in the Rest room. Charles Babbage carries the Gun and Master key. "You can see a man lying in the floor, his name is Charles Babbage, he seems to be dead, in his badge says that he was FioCruz's director, apparently he shot himself in the head with a gun because he was bitten by a zombie". The description is "Charles Babbage is carrying a gun and a key". 

Zombie 1 is a man in the Entry Hall. "". The  description is "". Understand "dead", "living dead", "undead", "zombie", and "walking dead" as zombie.
Zombie 1 has a number called is-alive. is-alive of the Zombie 1 is usually 1.

Definition: The zombie 1 is dead if his is-alive is less than 1.

Chapter 3 Things

Crowbar is a thing.
The Crowbar is in the Reception.

Cabinet is a container in the Reception.

Red key is a thing. Blue key is a thing. Yellow key is a thing. Green key is a thing.
Red key, Blue key, Yellow key, Green key are in Cabinet.

Master Key is a thing.

Gun is a thing.

Safe is a container in the Lab. "You see a big strong safe, that seems to be locked". The description is "". The Safe has a number called status.
status of Safe is usually 1. 

Antidote is a thing. Antidote is in Safe.

Attacking it with is an action applying to two things. Understand "attack [something] with [something]" and "hit [something] with [something]" as attacking it with.

Check attacking it with:
	if the second noun is not carried by the player:
		say "You're not holding [the second noun]." instead.

Instead of attacking the zombie 1:
	say "You have to attack the zombie with something.".

Instead of opening safe:
	if status of Safe is 1:
		say "The safe seems locked.";
	otherwise if status of Safe is 2:
		say "The safe seems to have a second security measurement, a fingerprint reader.";
	otherwise:
		say "The safe is open";
		
Instead of taking Antidote:
	if status of safe less than 3:
		say "you can't see the antidote";
	otherwise:
		continue the action;

Instead of opening Hall door 1:
	if Hall door 1 is locked:
		say "The Hall door 1 is locked by a chain.";
	otherwise:
		continue the action
		
Instead of taking the Gun:
	say "you took Charles Babbage's gun";
	now player carries the Gun;

Instead of attacking the zombie 1 with the crowbar:
	let X be a random number from 1 to 5;
	if X is 1 or X is 2:
		say "You hit the zombie with the crowbar right in the head. The crowbar gets stuck in the head of the zombie!";
		now is-alive of zombie 1 is 0;
		remove the zombie 1 from play;
		now the crowbar is in the location;
	otherwise if X is 3:
		say "You were not fast enough and the zombie attacks you.";
		end the story finally;
	otherwise:
		say "You missed the blow but still managed to pull away to try again."

Chapter 4 What Happens when entering

Being Outside the Hospital is a Scene. 
Being Outside the Hospital begins when play begins.
Being Outside the Hospital ends when player is in Reception.

When play begins, say "introduction to be written"