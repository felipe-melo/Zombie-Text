"Zombie Text" by "Felipe Melo, Herbert Salazar, Thiago Damasceno e Rodolpho Rosa"

Use American dialect, full-length room descriptions, and the serial comma.

Chapter 1 Geography

Section 1.1 The Build

Porch is a room. "The porch of Fiocruz is calm, quite different from the horrors that our soldier left behind until he gets there, the breeze hits his face as he prepares to enter.".
Reception is a room. "The reception is deserted, a deafening silence takes over the place.".
Hallway is a room. "The hallway is large with high walls, which seem even larger with the silence and the absence of people.".
Rest room is a room. "The rest room is a large room with comfortable chairs, but blood stains, showing that it was no longer a safe and comfortable place like before.".
Laboratory is a room. "The Laboratory is quite big, with lots of equipments and machines.". Understand "lab" as Laboratory. 
Hall is a room. "The hall is long and with pictures of famous scientists who passed through the institution".
Refectory is a room. "The refectory is a place with long tables surrounded by chairs".

Main door is a door. It is north of Porch and south of Reception. Main door is closed.
Hallway door is a door. It is north of Reception and south of Hallway. Hallway door is closed and locked.
Rest door is a door. It is east of Hallway and west of Rest Room. Rest door is closed and locked.
Lab door is a door. It is north of Hallway and south of Laboratory. Lab door is closed.
Hall door is a door. It is north of Laboratory and south of Hall. Hall door is closed.
Refectory door is a door. It is east of Hall and west of Refectory. Refectory door is closed and locked.

The matching key of the Hallway door is The Ax.
The matching key of the Rest door is Green key.
The matching key of the Refectory door is Red key.

Chapter 2 Characters

Player is in Porch.

Ada Lovelace is a woman in the Refectory. "You see a beautiful woman with a coat, when she turns you can see her name on it, Ada Lovelace.". The description is "Ada is a woman with long black hair and about forty years old and with an air of wisdom".

Charles Babbage is man in the Rest room. Charles Babbage carries the Gun, the Wallet, the Note, and Master key. "You can see a man lying on the floor. He seems to be dead. He apparently shot himself in the head with a gun". Understand "man", "the man", "the guy", "dead man" as Charles Babbage. The description is "The man has a gun in his right hand, some kind of special key, a wallet in his pocket and a note in his left hand". 

Zombie 1 is a man in the Hallway. "Standing by the Rest door you see a living dead who was once probably an employee of that institution. On the outside he wears this gray skin and hungry eyes.". The description is "The zombie was once a man and now it's just a brute animal.". Understand "dead", "living dead", "undead", "zombie", and "walking dead" as zombie.
Zombie 1 has a number called is-alive. is-alive of the Zombie 1 is usually 1.

Zombie 2 is woman in the Hall. "Standing by the Refectory door you see one of the undead scratching the Refectory door, as he was hunting something or someone.". The description is "She is wearing a medical coat, but she far from the profession she used to be.". Understand "dead", "living dead", "undead", "zombie" and "walking dead" as zombie.
Zombie 2 has a number called is-alive. is-alive of the Zombie 2 is usually 1.

Zombie 3 is man in the Hall. "There is another creature, a big man with the same hungry eye that they always have.". The description is "Just another live destroyed by this terrible prague.". Understand "dead", "living dead", "undead", "zombie" and "walking dead" as zombie.
Zombie 3 has a number called is-alive. is-alive of the Zombie 3 is usually 1.

Definition: The zombie 1 is dead if his is-alive is less than 1.
Definition: The zombie 2 is dead if his is-alive is less than 1.
Definition: The zombie 3 is dead if his is-alive is less than 1.

Chapter 3 Things

Ax is a thing.
Ax is in the Reception. The description is "An ax with wooden handle, looks new.".

Cabinet is a container in the Reception. The description is "A Cabinet with 4 keys on it, a red, yellow, green, and blue.".

Locker is a container in the Rest Room. Locker is closed and locked. 
	Locker has a number called nameDiscovered. nameDiscovered of the Locker is usually 0.
	The description is "The lockers of all the employees. They seem to be digital lockers that open with some kind of card.".
	The matching key of the Locker is Badge.

Bullet is a thing. Bullet is in Locker.

Wallet is a container.
Wallet has a number called checked. checked of the Wallet is usually 0.

Red key is a thing. Blue key is a thing. Yellow key is a thing. Green key is a thing.
Red key, Blue key, Yellow key, Green key are in Cabinet.

Master Key is a thing. Understand "special key" as Master Key. The description is "It's written: 'Master Key'".

Gun is a thing.
Gun has a number called has-bullet. has-bullet of the Gun is usually 0.

Definition: The gun is empty if his has-bullet is less than 1.

Safe is a container in the Laboratory. "You see a safe that seems to be locked". The description is "". The Safe has a number called status.
status of Safe is usually 1. 

Antidote is a thing. Antidote is in Safe.

Badge is a thing. The description is "It's written: 'Charles Babbage. FioCruz's Director'. Looks like a kind of card.".

the Badge is in the Wallet.

Note is a thing. The description is "There is something written in a trembling handwriting: 'Sorry for all the things I've done, Amanda. With love, Charles Babbage.'"

Chapter 4 Actions

Attacking it with is an action applying to two things. Understand "attack [something] with [something]" and "hit [something] with [something]" as attacking it with.

Check attacking it with:
	if the second noun is not carried by the player:
		say "You're not holding [the second noun]." instead.
		
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Check talking to: 
	say "[The noun] doesn't reply."
		
Following is an action applying to one thing. Understand "follow [someone]" as following.
		
Chapter 5 Rules

section 5.1 Charles Babbage's rules

Instead of taking the Gun: say "You took the gun from the dead man's body";
	Now player carries the gun;
	
Instead of taking the Note:
	say "You took the note from the dead man's body"; 
	Now player carries the note;
	
Instead of examining the Note:
	say "There is something written in a trembling handwriting:[paragraph break]
		'I tried to makes things right and i failed, i'm sorry Amanda. [paragraph break] With love, Charles Babbage'";
	now nameDiscovered of the Locker is 1;
	
Instead of taking the Wallet:
	say "You took the wallet from the dead man's body"; 	
	Now player carries the wallet;
	
Instead of examining the Gun:
	if has-bullet of the gun is 0:
		say "It's written: 'Desert Eagle Naga'. There is no bullets in it.";
	otherwise:
		say "It's written: 'Desert Eagle Naga'. It's charged with one bullet.";
		
Instead of taking the Badge:
	if checked of the Wallet is 0:
		say "You can't see any such thing.";
	otherwise:
		try examining the Badge;
		now nameDiscovered of the Locker is 1;
		say "You took the badge from the wallet";
		Now player carries the badge;
		
Instead of taking the Master Key:
	say "You took the Master Key from the dead man's body"; 	
	Now player carries the Master Key;
	
Instead of examining the Wallet:
	say "'There is blood all over it. Was he bitten by a zombie?'

	There is a badge in the wallet";
	now checked of the Wallet is 1;

Instead unlocking the Locker with badge:
	if nameDiscovered of the Locker is 0:
		say "'So many Lockers. Which one do I try to open?'";
	otherwise if player is carrying the badge:
		say "You open Charles Babbage's Locker. It's kinda messy! There is a bullet under the mess.";
		now Locker is open;	
	otherwise:
		say "You need some kind of card to open it.";

Instead of taking the bullet:
	now has-bullet of the Gun is 1;
	say "You put the bullet in the gun and now it's charged";
	remove bullet from play;
	
Instead of taking the Gun:
	say "You took Charles Babbage's gun";
	now player carries the Gun;

section 5.2 thing's rules

Instead of taking the Cabinet:
	say "it's too heavy to carry";
	
Instead of taking the Locker:
	say "it's too heavy to carry";
	
Instead of taking the Safe:
	say "it's too heavy to carry";
	
Instead of opening Safe:
	if status of Safe is 2 and Ada is in the Laboratory:
		now status of Safe is 3;
		say "Ada opens the Safe with her fingerprint. The Safe is now open and you can see the antidote inside it.";
	otherwise if status of Safe is 2 :
		say "The safe seems to have a second security measure: a fingerprint reader.";
	otherwise:
		say "The safe seems locked.";

Instead of unlocking Safe with master key:
	if player is carrying the Master key:
		if status of Safe is 1:
			now status of Safe is 2;
			say "You've unlocked the Safe, but it seems to have another security measure.";
		otherwise:
			say "The safe seems to have a second security measure: a fingerprint reader.";
	otherwise if status of Safe is 1:
		say "The safe seems locked.";
	otherwise if status of Safe is 2:
		say "The safe seems to have a second security measure: a fingerprint reader.";
	otherwise:
		say "The safe is open";
		
Instead of taking Antidote:
	if status of Safe is less than 3:
		say "You can't see the antidote.";
	otherwise:
		say "You took the antidote, handled it to responsible officers and saved the mankind.";
		end the story finally;
	
section 5.3 zombie's rules

Instead of attacking the zombie 1:
	say "You have to attack the zombie with something.".

Instead of attacking the zombie 2:
	say "You have to attack the zombie with something.".

Instead of attacking the zombie 3:
	say "You have to attack the zombie with something.".
	
Instead of attacking the zombie 1 with the Ax:
	let X be a random number from 1 to 5;
	if X is 1 or X is 2:
		say "You hit the zombie with the ax right in the head. The ax gets stuck in the head of the zombie!";
		now is-alive of zombie 1 is 0;
		remove the zombie 1 from play;
		now the Ax is in the location;
	otherwise if X is 3:
		say "You were not fast enough and the zombie attacks you.";
		end the story finally;
	otherwise:
		say "You missed the blow but still managed to pull away to try again."

Instead of attacking the zombie 2 with the Ax:
	if Zombie 3 is not dead:
		say "Zombie 3 just attacked you from behind.";
		end the story finally;
	otherwise:
		say "You hit the zombie with the ax right in the head. The ax gets stuck in the head of the zombie!";
		now is-alive of Zombie 2 is 0;
		remove the zombie 2 from play;
		now the Ax is in the location;

[Jogador tenta matar o zumbi com a arma, que só tem uma bala. Se ele errar ou estiver sem balas, ele morre.]
Instead of attacking the zombie 2 with the gun:
	let X be a random number from 1 to 10;
	if gun is empty:
		say "You are out of bullets and you have been attacked.";
		end the story finally;
	otherwise if X is greater than 3:
		say "You shot the zombie and now you are out of gun";
		now is-alive of zombie 2 is 0;
		now has-bullet of the Gun is 0;
		remove the zombie 2 from play;
	otherwise:
		say "You missed the shot and now you're out of bullets. The zombies attack you.";
		end the story finally;

[***Mecânicas do Zumbi 3***]
[Jogador morre caso ataque o zumbi com o pé de cabra ao invés da arma.]
Instead of attacking the zombie 3 with the Ax:
	if Zombie 2 is not dead:
		say "Zombie 2 just attacked you from behind.";
		end the story finally;
	otherwise:
		say "You hit the zombie with the ax right in the head. The ax gets stuck in the head of the zombie!";
		now is-alive of zombie 3 is 0;
		remove the zombie 3 from play;
		now the Ax is in the location;

[Jogador tenta matar o zumbi com a arma, que só tem uma bala. Se ele errar ou estiver sem balas, ele morre.]
Instead of attacking the zombie 3 with the gun:
	let X be a random number from 1 to 10;
	if gun is empty:
		say "You are out of bullets and you have been attacked.";
		end the story finally;
	otherwise if X is greater than 3:
		say "You shot the zombie and now you are out of gun";
		now is-alive of zombie 3 is 0;
		now has-bullet of the Gun is 0;
		remove the zombie 3 from play;
	otherwise:
		say "You missed the shot and now you're out of bullets. The zombies attack you.";
		end the story finally;

section 5.4 door's rules

Instead of opening Hall door:
	if Hall door is locked:
		say "The Hall door 1 is locked with a chain.";
	otherwise:
		continue the action
	
instead of opening Rest door:
	if the Zombie 1 is dead:
		continue the action;
	otherwise:
		say "The zombie tries to attack you, before you get to the door!"
		
instead of opening Lab door:
	if the Zombie 1 is dead:
		continue the action;
	otherwise:
		say "The zombie tries to attack you, before you get to the door!"
		
instead of opening Refectory door:
	if the Zombie 1 is dead:
		continue the action;
	otherwise:
		say "The zombie tries to attack you, before you get to the door!"

Chapter 6 What Happens when entering

Being Outside the Hospital is a Scene. 
Being Outside the Hospital begins when play begins.
Being Outside the Hospital ends when player is in Reception.

When play begins, say "A zombie apocalypse has taken over Brazil, the virus has spread rapidly through several cities in different ways, a soldier is sent to the Oswaldo Cruz Foundation (Fiocruz) to try to recover a cure (antidote) that was being developed by a brilliant researcher named Ada Lovelace . Your research may be Brazil's last hope. The soldier knows nothing about the current situation in the building.".

Chapter 7 Conversation

Instead of talking to Charles Babbage:
	say "He does not respond, he seems to be dead.".

Instead of talking to Ada Lovelace:
	say "you: 'Are you alright? Were you bitten? Do you know where the antidote is?' [paragraph break]
		Ada: 'Thank's God you are here. I was so scary. Did you kill the zombies out side?'. [paragraph break]
		You: 'Yeah it was not easy.'. [paragraph break]
		You take a deep breath and try to calm down. [paragraph break]
		you: 'I've been through hell to get here and i don't even know if the antidote is safe.' [paragraph break] 
		Ada: 'Don't worry about that, the antidote is here and safe.'".

Instead of asking Ada Lovelace about "antidote":
	say "Ada: 'The antidote is in the laboratory in a locked safe' [paragraph break] Ada: 'To access it you need a master key that is with the FioCruz's director and then you'll need my fingerprint'[paragraph break]Ada: 'Follow me''".

Instead of following Ada Lovelace:
	move Ada Lovelace to the Laboratory; 	
	move player to the Laboratory;
