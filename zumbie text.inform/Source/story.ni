"zumbi text" by "Felipe Melo"

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

Zombie 2 is woman in the Back Hall. "". The description is "". Understand "dead", "living dead", "undead", "zombie" and "walking dead" as zombie.
Zombie 2 has a number called 2-is-alive. 2-is-alive of the Zombie 2 is usually 1.

Zombie 3 is man in the Back Hall. "". The description is "". Understand "dead", "living dead", "undead", "zombie" and "walking dead" as zombie.
Zombie 3 has a number called 3-is-alive. 3-is-alive of the Zombie 3 is usually 1.

Definition: The zombie 1 is dead if his is-alive is less than 1.
Definition: The zombie 2 is dead if his 2-is-alive is less than 1.
Definition: The zombie 3 is dead if his 3-is-alive is less than 1.

Chapter 3 Things

Crowbar is a thing.
The Crowbar is in the Reception.

Cabinet is a container in the Reception.

Red key is a thing. Blue key is a thing. Yellow key is a thing. Green key is a thing.
Red key, Blue key, Yellow key, Green key are in Cabinet.

Master Key is a thing.

Gun is a thing.
Gun has a number called has-bullet. has-bullet of the Gun is usually 1.

Definition: The gun is empty if his has-bullet is less than 1.

Attacking it with is an action applying to two things. Understand "attack [something] with [something]" and "hit [something] with [something]" as attacking it with.

Check attacking it with:
	if the second noun is not carried by the player:
		say "You're not holding [the second noun]." instead.
		
Instead of taking the Gun:
	say "You took the gun from Charles Babbage's";
	now player carries the Gun;

Instead of attacking the zombie 1:
	say "You have to attack the zombie with something.".
	
Instead of opening Hall door 1:
	if Hall door 1 is locked:
		say "The Hall door 1 is locked by a chain.";
	otherwise:
		continue the action

Instead of attacking the zombie 1 with the crowbar:
	let X be a random number from 1 to 5;
	if X is 1:
		say "You hit the zombie with the crowbar right in the head. The crowbar gets stuck in the head of the zombie!";
		now is-alive is 0;
		remove the zombie 1 from play;
		now the crowbar is in the location;
	otherwise if X is 2:
		say "You were not fast enough and the zombie attacks you.";
		end the story finally;
	otherwise:
		say "You missed the blow but still managed to pull away to try again."

[***Mecânicas do Zumbi 2***]
[Jogador morre caso ataque o zumbi com o pé de cabra ao invés da arma.]
Instead of attacking the zombie 2 with the crowbar:
	if Zombie 3 is not dead:
		say "Zombie 3 just attacked you from behind.";
		end the story finally;
	otherwise:
		say "You killed the zombie 2";
		now 2-is-alive is 0;
		remove the zombie 2 from play;

[Jogador tenta matar o zumbi com a arma, que só tem uma bala. Se ele errar ou estiver sem balas, ele morre.]
Instead of attacking the zombie 2 with the gun:
	let X be a random number from 1 to 10;
	if gun is empty:
		say "You are out of bullets and you have been attacked.";
		end the story finally;
	otherwise if X is greater than 3:
		say "You shot the zombie and now you are out of gun";
		now 2-is-alive is 0;
		now has-bullet of the Gun is 0;
		remove the zombie 2 from play;
	otherwise:
		say "You missed the shot and now you're out of bullets. The zombies attack you.";
		end the story finally;

[***Mecânicas do Zumbi 3***]
[Jogador morre caso ataque o zumbi com o pé de cabra ao invés da arma.]
Instead of attacking the zombie 3 with the crowbar:
	if Zombie 2 is not dead:
		say "Zombie 2 just attacked you from behind.";
		end the story finally;
	otherwise:
		say "You killed zombie 3";
		now 3-is-alive is 0;
		remove the zombie 3 from play;

[Jogador tenta matar o zumbi com a arma, que só tem uma bala. Se ele errar ou estiver sem balas, ele morre.]
Instead of attacking the zombie 3 with the gun:
	let X be a random number from 1 to 10;
	if gun is empty:
		say "You are out of bullets and you have been attacked.";
		end the story finally;
	otherwise if X is greater than 3:
		say "You shot the zombie and now you are out of gun";
		now 3-is-alive is 0;
		now has-bullet of the Gun is 0;
		remove the zombie 3 from play;
	otherwise:
		say "You missed the shot and now you're out of bullets. The zombies attack you.";
		end the story finally;

Chapter 4 What Happens when entering

Being Outside the Hospital is a Scene. 
Being Outside the Hospital begins when play begins.
Being Outside the Hospital ends when player is in Reception.

When play begins, say "introduction to be written"