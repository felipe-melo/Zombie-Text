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

The matching key of the Hall door 1 is The Ax.
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

Charles Babbage is man in the Rest room. Charles Babbage carries the Gun, the Wallet, the Note, and Master key. "You can see a man lying on the floor. He seems to be dead, apparently he shot himself in the head with a gun". Understand "man", "the man", "the guy", "dead man" as Charles Babbage. The description is "The man has a gun in his right hand, some kind of special key and a wallet in his pocket and a note in his left hand". 

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

Ax is a thing.
The Ax is in the Reception.

Cabinet is a container in the Reception.

Locker is a container in the Rest Room. Locker is closed and locked. 
	Locker has a number called nameDiscovered. nameDiscovered of the Locker is usually 0.
	The description is "The lockers of all employees. They seem to be digital lockers that opens with some kind of card.".
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

Safe is a container in the Lab. "You see a big strong safe, that seems to be locked". The description is "". The Safe has a number called status.
status of Safe is usually 1. 

Antidote is a thing. Antidote is in Safe.

Badge is a thing. The description is "It's written: 'Charles Babbage. FioCruz's Director'. Looks like a kind of card.". Understand "card" as badge.

the Badge is in the Wallet.

Note is a thing. The description is "There is something wrote with a trembling letter: 'Sorry for all the things I did, Amanda. With love, Charles Babbage'"

Chapter 4 Actions

Attacking it with is an action applying to two things. Understand "attack [something] with [something]" and "hit [something] with [something]" as attacking it with.

Check attacking it with:
	if the second noun is not carried by the player:
		say "You're not holding [the second noun]." instead.
		
Talking to is an action applying to one visible thing. Understand "talk to [someone]" or “converse with [someone]” as talking to.

Check talking to: 
	say "[The noun] doesn't reply."
		
Carrying is an action applying to one thing. Understand "carry [someone]" as carrying.
		
Chapter 5 Rules

Instead of taking the Gun: say "You took the gun from the dead man's body";
	Now player carries the gun;

Instead of taking the Note:
	say "You took the note from the dead man's body"; 
	Now player carries the note;
	
Instead of examining the Note:
	say "There is something wrote with a trembling letter: 'Sorry for all the things I did, Amanda. With love, Charles Babbage'";
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
	
Before opening the Locker:
	if nameDiscovered of the Locker is 0:
		try examining Locker;
		say "'So many Lockers. Which one do I try to open?'";
	otherwise:
		try examining Locker;
		say "Opening Charles Babbage's Locker";
	
	
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

Instead of attacking the zombie 1:
	say "You have to attack the zombie with something.".
	
Instead of opening Safe:
	if status of Safe is 2 and Ada is in the Lab:
		now status of Safe is 3;
		say "Ada opens the Safe with her fingerprint. The Safe is now open and you can see the antidote inside it.";
	otherwise if status of Safe is 2 :
		say "The safe seems to have a second security measurement, a fingerprint reader.";
	otherwise:
		say "The safe seems locked.";

Instead of unlocking Safe with master key:
	if player is carrying the Master key:
		if status of Safe is 1:
			now status of Safe is 2;
			say "You've unlocked the Safe, but it seems to have another security measurement.";
		otherwise:
			say "The safe seems to have a second security measurement, a fingerprint reader.";
	otherwise if status of Safe is 1:
		say "The safe seems locked.";
	otherwise if status of Safe is 2:
		say "The safe seems to have a second security measurement, a fingerprint reader.";
	otherwise:
		say "The safe is open";
		
Instead of taking Antidote:
	if status of Safe is less than 3:
		say "you can't see the antidote.";
	otherwise:
		say "You took the antidote, led to responsible officials and saved mankind.";
		end the story finally;

Instead of opening Hall door 1:
	if Hall door 1 is locked:
		say "The Hall door 1 is locked by a chain.";
	otherwise:
		continue the action
		
Instead of taking the Gun:
	say "you took Charles Babbage's gun";
	now player carries the Gun;

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
		

[***Mecânicas do Zumbi 2***]
[Jogador morre caso ataque o zumbi com o pé de cabra ao invés da arma.]
Instead of attacking the zombie 2 with the Ax:
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
Instead of attacking the zombie 3 with the Ax:
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

Chapter 6 What Happens when entering

Being Outside the Hospital is a Scene. 
Being Outside the Hospital begins when play begins.
Being Outside the Hospital ends when player is in Reception.

When play begins, say "introduction to be written"


Chapter 7 Conversation

Instead of talking to Charles Babbage:say "He does not respond, he seems to be dead.".

Instead of talking to Ada Lovelace:say "'Are you alright? Was it bitten? Do you know where the cure is? ' you say flustered.[paragraph break]'Im fine, you can rest easy,' she responds.[paragraph break] 'And I know where the cure is' she says with a beautiful smile on her face .".


Instead of asking Ada Lovelace about " the cure":
say "'The cure is in the laboratory in a closed chamber' [paragraph break] 'To access it you need a master key that is with the director of FioCruz's and then you need my digital' she informs"
	
Instead of carrying Ada Lovelace: 	
	move Ada Lovelace to the Lab; 	
	move player to the Lab;
	