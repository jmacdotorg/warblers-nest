Include Extended Grammar by Aaron Reed.
Include Basic Help Menu by Emily Short.
Use no scoring.

The story genre is "Horror".
The story title is "The Warbler's Nest".
The story headline is "A fairy tale".
The story description is "A short story about a troubled soul, searching for answers among the reeds."
The story author is "Jason McIntosh".
The story creation year is 2010.
The release number is 22.

Release along with cover art, a website, a solution, and an interpreter.

[ iOS-specific greeting banner. Swap out as appropriate.]
 After printing the banner text, say "For more information about this game, please type ABOUT." 
[After printing the banner text, say "For more information about this game, please tap the [italic type]Help[roman type] button at the bottom of your screen."]

When play begins:
	Say "Surely the reed bank counts as a wild place. While it gives you so much, you've never tended it, not really, not like you do with your garden. And you've certainly seen birds there. It's something like the forest, then, but much safer to search without attracting attention. So here you are.";
	Now the right hand status line is "";
	choose row 1 in Table of Basic Help Options;
	now title entry is "About this Game";
	now description entry is "This game, a short work of interactive horror fiction, was originally written by Jason McIntosh for the 2010 Interactive Fiction competition (http://ifcomp.org). The version of the game you are now playing has enjoyed several rounds of revision and improvement since then, thanks to invaluable player feedback and critique.[paragraph break]'The Warbler[']s Nest' uses fairly ordinary IF game syntax. It may introduce some verbs of its own, but they are for the player to discover; none are unusual enough to bear mention here.[paragraph break]This work was crafted with Inform 7, a programming language and development environment by Graham Nelson, Emily Short, Andrew Hunter, et al.[paragraph break]Playtesters of the game's original release include Ruth Alfasso, Jake Eakle, Kevin Jackson-Mead, Joe Johnston, Mark Musante, and Doug Orleans. Emily Short provided additional critique of the competition release, and initial post-competition testers include Lise Brodzik, Michael Hilborn, M. Flourish Klink and Andrew Plotkin.[paragraph break]Special thanks to the People[']s Republic of Interactive Fiction (http://pr-if.org) and its Grue Street writers['] workshop, to the denizens of the #I7 chat channel on ifMUD (http://ifmud.port4000.com), and to everyone who wrote reviews of 'The Warbler[']s Nest' during the 2010 competition.[paragraph break]The game's cover art is based on a photograph of a reed beach by Jan-Eric Nyström, shared under a Creative Commons BY-SA 2.5 license.[paragraph break]This game is copyright © 2010-2013 by Jason McIntosh.";

Chapter -1 - The help table

Table of Basic Help Options (continued)
title    	 subtable    	 description
"Contacting the Author"    	 --    	 "If you have any questions or comments about [story title], please feel free to email the author at jmac@jmac.org. Praise, condemnation, and bug reports are all welcomed with equal gratitude."
"Game Homepage"	--	"You can also find the latest information about this game, including an illustrated afterword, hints, and other material, at its homepage:[paragraph break]http://jmac.org/warbler"
"Hints and Walkthrough"	--	"This game is meant to be quite short (despite its multiple endings) and contains no puzzles per se. If you find yourself unsure what to do next, make sure to EXAMINE the various things mentioned in the game's descriptive text. You may need to LOOK INTO, BEHIND, or UNDER things as well.[paragraph break]If you need more specific help, the author has prepared a spoiler-resistant hintbook for this game. You can visit it at http://jmac.org/warbler/hints/ ."


Chapter 0 - Setup

Understand the command "think" as something new.

[ Overriding Basic Help for the iOS release. ]
[Check asking for help:
	Say "For help playing this game, please tap the [italic type]Help[roman type] button at the bottom of your screen. (If you don't see that button, you may need to dimiss the keyboard first; tap the button depicting a keyboard symbol, found in your screen's upper-right corner.)";
	Stop the action.
]

Instead of examining the player, say "So many years on, and still just as God made you, underneath your simple homespun shift."

The homespun shift is part of the player. The description is "Your clothing."

Your hands are part of the player. The description is "[if the baby is crying and the baby is not hated]Your hands tremble and shake.[otherwise if the baby is hated]Your hands are steady again.[otherwise]They've done so much, haven't they?"

Instead of taking the shift, try taking off the shift.
Instead of dropping the shift, try taking off the shift.
Before taking off the shift, say "You've no need to disrobe now." instead.

After examining the shift for the first time, say "[italic type]'There,' said the visiting tailor, finishing his work. 'That will see you through for another year.'[line break][line break]You thanked him, and saw him out, away from the commotion. After some time absently strolling around your little garden together, exchanging small news and pleasantries, he paused, visibly uncomfortable.[line break][line break]'I travel quite a bit in my work, you know,' he began, slowly. 'And I've seen plenty of the mischief that the Small Folk can do.'[line break][line break]'I... what?' you stumbled, unsettled by the strange subject change. He looked directly into your eyes for two beats before continuing..."

An eggshell is a kind of container. Understand "egg", "shell" as an eggshell. Understand "eggs", "eggshells", "shells" as the plural of eggshell.

There is an eggshell called the whole eggshell. "A bird's egg, emptied out, lies on the ground here." The whole eggshell has the printed name "speckled eggshell". The whole eggshell has the description "[if the stoat carries the whole eggshell]The stoat has bitten off one end of this eggshell, and holds it steady with its front paws while it laps up the meat inside.[otherwise]That stoat did a neat job with this one. The egg's top is cleanly bit away, and the inside licked clean, leaving the shell whole." Understand "speckled eggshell", "speckled", "cap", "spotted cap", "spotted" as the whole eggshell.

After examining an eggshell while the player carries two eggshells:
	Say "The two eggshells you hold, now that you can compare them, seem to be about the same size and shape, though one is all cracked. Probably from the same bird.";

Before inserting something (called the thing) into an eggshell:
	If the thing is not a water blob and the thing is not the river:
		Instead say "That's not what goes into the eggshells.";
	Otherwise:
		Continue the action.

A bird is a kind of animal.

The player is female.

[ Sticking this here because I don't know how else to specify the starting location.]
The MiddleReeds is a room.

Instead of dropping an eggshell while Crisis is not happening, say "Best hang onto that."
Instead of dropping an eggshell (called the egg) while Crisis is happening:
	Say "You dash the eggshell onto the ground. Bits of shell fly everywhere[if the egg is waterfilled], and the water it contained sinks into the packed-earth floor[end if].";
	Remove the whole eggshell from play;
	If the baby is silent:
		Say "[The baby] seems to gape at your outburst.";
		Commence sniffling.


["Looking behind" code cheerfully ripped off from JIm Aikin.]	
Looking behind is an action applying to one thing and requiring light. Understand "look behind [something]" as looking behind.
Check looking behind: say "You find nothing interesting behind [the noun]."

Untying is an action applying to one visible thing. Understand "untie [something]" as untying.
Check untying:
	Say "That's not tied up.";

Understand "pick [something]" as taking.

Pouring is an action applying to one visible thing. Understand "pour [something]", "pour out [something]", "empty [something]" as pouring.
Check pouring:
	If the noun is not an eggshell:
		say "That's not something you can pour out.";
	Otherwise if the noun contains nothing:
		say "It's already empty.";
	Otherwise if the noun contains a water blob:
		say "Better that you don't spill it, right now.";

Saying anda is an action applying to nothing. Understand "anda", "say anda" as saying anda.
Check saying anda:
	If the location is not indoors:
		Say "Not here.";

Saying xyzzy is an action applying to nothing. Understand "xyzzy" as saying xyzzy.
Check saying xyzzy: Say "If you could mend your troubles with one word, God knows you would have done it by now."

Praying is an action applying to nothing. Understand "pray" as praying.
Check praying: Say "This is in your hands alone, now."

Swimming is an action applying to nothing. Swimming in is an action applying to one thing. Understand "swim" as swimming. Understand "swim in [something]" as swimming in.

Instead of swimming or swimming in, say "No place to do that, here."

Before praying while the player is in the graves, try examining the eye instead.

Naming is an action applying to one visible thing. Understand "name [something]" as naming.
Carry out naming:
	Say "That already has a name, and not by you."
Instead of naming the baby, say "That's right, [the baby] does have a name..."

Touching it with is an action applying to one visible thing and one carried thing. Understand "touch [something] with [something]" as touching it with. Understand "touch [something] to [something]", "hold [something] to [something]" as touching it with (with nouns reversed).
Carry out touching it with:
	Say "Nothing obvious happens."
	
Before touching something (called the thingy) with the player:
	Try touching the thingy instead.
	
Before touching something (called the thingy) with your hands:
	Try touching the thingy instead.

Instead of touching the baby with the shears:
	If the baby is not crying:
		Say "Yes, that might work as a test, too. But you'd best see through the eggshell test first.";
	Otherwise if the baby is loved or the baby is hated:
		Say "The time for such tests is past.";
	Otherwise:
		Say "[one of]Slowly, you bring the flat of the sharp blade up to the baby's cheek... but stop short, uncertain. So instead, you grasp one of the baby's little hands to keep it steady, and with your other hand press the cold blade across its arm.[paragraph break]The moment you do so, the baby squeezes your fingers with its tiny ones, strong. You draw back, nearly dropping the shears. The baby continues squealing.[or]This time you do touch the flat of the shears['] blade to the baby's cheek, after holding it steady with a hand acrross the forehead. The baby flinches away from the cold touch, shrieking. (Or, rather, carrying on with its shrieking.)[or][first time]You snip the shears, idly, gazing at the squirming baby. [only]No... doubt and discomfort stop you from running this test any further.[stopping]";
	
Instead of putting the shears on the baby, try touching the baby with the shears.

Instead of touching the baby:
	If the baby is loved:
		say "You gently stroke his thin, black hair.";
	Otherwise if the baby is hated:
		say "You poke at the creature. It just keeps bawling, of course.";
	Otherwise:
		say "You run your finger down the baby's warm cheek, damp with tears and snot.";

RiverFlashbackState is a truth state that varies. RiverFlashbackState is false.

EggshellFlashbackState is a truth state that varies. EggshellFlashbackState is false.

NursingPonderState is a truth state that varies. NursingPonderState is false.

CradlePonderState is a truth state that varies. CradlePonderState is false.

RiverPonderState is a truth state that varies. RiverPonderState is false.

AttackPonderState is a truth state that varies. AttackPonderState is false.

AndaAcknowledgement is a truth state that varies. AndaAcknowledgement is false.

A thing can be stabby. A thing is usually not stabby.

[ Kevin's annotation magic: ]
Understand "* [text]" as a mistake ("[bracket] Noted. [close bracket]").

Understand "walkthrough", "walkthru" as a mistake ("[bracket] You can find a walkthrough at http://jmac.org/warbler/solution.txt. [close bracket]")

Understand "go to [something]" as going.

Rule for amusing a victorious player: say "An illustrated afterword for this game is available on the web. Please visit http://jmac.org/warbler/afterword/."

The baby pronoun is text that varies. The baby pronoun is "it".
The baby objective pronoun is text that varies. The baby objective pronoun is "it".
The baby capital pronoun is text that varies. The baby capital pronoun is "It".
The baby possessive is text that varies. The baby possessive is "its".
The baby capital possessive is text that varies. The baby capital possessive is "Its".

Understand "hush [something]", "cuddle [something]", "soothe [something]", "calm [something]", "comfort [something]" as kissing.

Understand "peel [something]" as opening.

Singing is an action applying to one thing.

Instead of singing during Crisis, say "You know from experience that singing does little good now, while [the baby] is fully caught up in [the baby possessive] crying fits."

Instead of singing, say "Now is not the time."

To display a hint:
	If the player carries fewer than two eggshells:
		Say "[italic type]'Eggshells,' he said. 'You should find two, empty but mostly whole...'[roman type][paragraph break]";
		If the soft sound is in the garden:
			Say "That soft scratching sound from behind the cottage comes again, interrupting your thoughts.";
	Otherwise:
		Say "[italic type]'Then fill both the shells with water,' he said, 'and carry them into your cottage...'[roman type][paragraph break]";

Section - A bit of disambiguation

Does the player mean opening the whole eggshell: it is unlikely.
Does the player mean pouring an empty eggshell: it is unlikely.

Chapter 1 - The Reeds

Section 1 - Regions and backdrops

The Reed Banks is a region. The MiddleReeds and the Beach are in the Reed Banks.

The Clearing is a region. The garden and the graves are in the clearing.

The Outdoors is a region. [Boo, I can't get the next statement to work.] [Everywhere except Indoors is in the Outdoors.] The reed banks and the clearing are in the outdoors.

The sky is a backdrop. Understand "clouds" as the sky. It is in the Outdoors. It has the description "Today the sky is a uniform middling gray. Overcast." Instead of examining up in outdoors, try examining the sky.

The ground is a backdrop. It has the description "Only the ground." It is everywhere. Instead of examining down, try examining the ground. Instead of examining the ground in the middlereeds, try looking under the reeds.

The reed backdrop is a backdrop. It is in the garden and the graves. Understand "reeds" as the reed backdrop. It has the description "The reeds, your friends, rustle and whisper in the river's soft breeze, to the south."

The distantCottage is a backdrop with printed name "cottage". It is in the Reed Banks. Understand "home", "hut", "doorway", "cottage", "hovel", "roof", "thatched", "thatched roof", and "house" as the distantCottage. It has the description "Its familiar thatched roof rises over the reed-tops in the distance." Instead of entering the distantCottage, say "Your cottage is north from here."

The cottage is a backdrop. It is in the garden and the graves. Instead of entering the cottage while the player is in the graves, say "You're behind the cottage. The doorway's on the other side." Understand "doorway" as the cottage.

The forest is a backdrop. It is in the Outdoors. It has the description "The green of the nearby forest seems thicker today. The shadows, thicker." Understand "shadows", "wood", "woods", "trees" as the forest.

Section 2 - The birds

There is an eggshell called a cracked eggshell. It is closed. It is openable. "A small, spotted egg lies on the ground underneath the nest." It has the printed name "small spotted egg". It has the description "A small, spotted egg." Understand "small", "small egg", "small cracked egg", "crack", "cracks" as the cracked eggshell.

Inside it is a bird called a bird fetus. It has the printed name "dead chick". It has the description "Not so much a dead animal as one never really alive, the tiny, twisted body lies in a pool of blackish goo." Understand "dead chick", "chick", "dead bird", "yolk", "dead" and "fetus" as the fetus.

There is a thing called a refuse pile. "Under the nest is a small mound of feathers, straw, droppings, and other matter apparently dropped from the reed-bird's nest and its occupant." The refuse pile is a supporter. Understand "mound", "feathers", "straw", "leavings", "bird-leavings", "offal" and "droppings" as the pile.

Instead of taking the fetus:
	Say "Grimacing, you upend the egg. The dead thing and its murky goo tumble out wetly. You turn your head away, not caring to see what becomes of it.[paragraph break]The shell is empty now.";
	Remove the fetus from play.
	
Instead of pouring the fetus, try taking the fetus.
Instead of pouring the cracked eggshell while cracked eggshell is open and the fetus is in the cracked eggshell, try taking the fetus.
Instead of pouring the cracked eggshell while the cracked eggshell is closed, say "The egg, while cracked, is still whole."

Before turning the cracked eggshell:
	If the cracked eggshell is open:
		If the fetus is in the cracked eggshell, instead try taking the fetus.

After taking the cracked eggshell for the first time:
	say "Holding it, you now see that the egg's surface is webbed with cracks, as if it had been dropped.";
	now the printed name of the cracked eggshell is "small cracked egg";
	Now the description of the cracked eggshell is "A small spotted egg, its surface webbed with cracks.";
	Continue the action;

Instead of attacking the cracked eggshell, say "It's already cracked, so should be easy to just peel open."

Before opening the cracked eggshell:
	If the player is not holding the cracked eggshell:
		say "(First taking the small egg)";
		move the cracked eggshell to the player.

After opening the cracked eggshell:
	Now the printed name of the cracked eggshell is "cracked eggshell";
	Now the description of the cracked eggshell is "A small spotted eggshell, its surface webbed with cracks.";
	Say "Peeling away the topmost fragments from the egg's shell reveals the tiny body of a dead chick, unborn, encased in a veined and rotting yolk.[line break][line break]You manage to keep your grip on the shell, just the same."
	
Before closing the cracked eggshell:
	If the cracked eggshell is open, instead say "You cannot rebuild the egg."
	

There is a bird called a warbler. Understand "bird", "reed-bird", "warbler" and "reed bird" as the warbler. The warbler has the description "A small reddish bird. It's perched on a stem beside its nest, feeding its young." The warbler has the printed name "reed-bird".

Instead of taking the warbler, say "You've no reason to chase birds around now."

There is a thing called a nest. The nest is scenery.

Understand "bird's nest", "basket" and "basket nest" as the nest. It has the description "A basket-shaped nest of loosely woven brown grasses. It stands out among the bright green summer reeds, but they grow so thick that it remains well concealed regardless. It's just high enough off the damp ground to keep it safe from most of the crawling animals.[line break][line break]Squatting atop the nest is a single, large chick[if the warbler is in the MiddleReeds], squawkingly engaged in gobbling down the morsels the reed-bird offers it[end if]."

Instead of taking the nest, say "You'd rather not disturb this nest. You've been living fine all these years considering the reed-bird a thatcher's friend, keeping the reeds free of worse nuisances."

Instead of searching the nest, say "No eggs here. That big chick would leave them no room, anyway."

Instead of looking under the nest:
	If the refuse pile is not visible:
		Try searching the reeds;
	Otherwise:
		Try examining the refuse pile.

Instead of inserting something into the nest, try taking the cuckoo chick. Instead of doing anything other than examining or taking to the cuckoo chick, try taking the cuckoo chick. Instead of doing anything other than examining, searching, or looking under to the nest, try taking the nest.

There is a bird called a cuckoo chick. The chick is scenery. The chick has the printed name "large chick". Understand "striped", "striped bird", "large bird", "bird", and "young" as the chick. The chick has the description "This bird has the plumage and shape of one that's hatched very recently. Oddly, though, it looks like a larger animal than [if the warbler is in the MiddleReeds]the reed-bird feeding it.[otherwise]you remember its parent being.[end if] It's so large that it doesn't seem to quite fit in the nest, instead squatting on top of it."

The chick can be hungry, fed, or watchful. The chick is hungry. Instead of taking the chick, try taking the nest. Instead of attacking the chick, try taking the chick.

There is a thing called the invisible bird. It is scenery. The invisible bird has a truth state called flittiness. The flittiness of the invisible bird is true. Understand "bird", "shadow", "flitting" as the invisible bird.
There is a thing called the tall stalk. "One particularly tall stalk, topped with an early flower, marks [if the nest is in the MiddleReeds]the location of the reed bird's nest.[otherwise]the place where that reed-bird flew." The tall stalk has the description "A particularly tall stalk, one of the first among the reeds to flower this year." The tall stalk is fixed in place.
Understand "reed", "flower", "tall", "tall stalk", "stalk"  as the tall stalk.
There is a thing called the fake stalk. "One particularly tall stalk, topped with an early flower, marks the location of the reed bird's nest." The fake stalk has the printed name "tall stalk". The fake stalk has the description "Just another reed, one of countless here." The fake stalk is fixed in place.
Understand "reed", "flower", "tall", "tall reed", "tall stalk", "nest", "bird" as the fake stalk.

Instead of taking the tall stalk, try taking the reeds.
Instead of taking the fake stalk, try taking the reeds.

[Instead of examining the invisible bird: 
	say "The bird dropped down into the reeds some distance away, near one particularly tall stalk, topped with a flower that's come in early.";
	now the tall stalk is in the MiddleReeds.;
	remove the invisible bird from play.]
The invisible bird has the description "The bird dropped down into the reeds some distance away, near one particularly tall stalk, topped with a flower that's come in early.".
[ XXX Install an extension for following? ] 
[ Instead of following the bird, try examining it. ] Instead of going to the bird, try examining the invisible bird.

Instead of examining the tall stalk for the first time:
	say "Carefully approaching the tall stalk, you discover the hiding place of the reed bird's nest.";
[	Now the tall stalk is scenery; ]
	Move the nest to the MiddleReeds;
	Move the cuckoo chick to the middlereeds;
	Remove the invisible bird from play;
	Move the warbler to the MiddleReeds;
	The warbler departs in two turns from now;
		
Every turn when the player can see the warbler, say "The reed-bird goes about the business of feeding its young."

At the time when the warbler departs:
	If the player is in the MiddleReeds, say "The reed-bird darts away again, perhaps looking for more food for its enormous chick.";
	Remove the warbler from play;
	Now the chick is fed.
	
Every turn when the player is in the MiddleReeds:
	If the chick is fed:
		Now the chick is watchful;
		If the chick is visible:
			Say "The chick, now fed, resettles itself atop the nest, preening a bit. As it does so, loose feathers and other bits of refuse drift down to join a pile on the ground beneath it.";
			Move the refuse pile to the MiddleReeds;

Instead of entering the tall stalk, try examining the tall stalk.
Before going the tall stalk, try examining the tall stalk instead.


Section 3 - The reeds

The reeds are a backdrop. They are in the Reed Banks. Understand "grass", "flowers", "reed", "flower", "bank", "reed bank", "green" and "purple flowers" as the reeds. They have the description "It's midsummer, and the reeds grow thick and green. Their tall, purple flowers are just starting to come in."

To deliver the eggshell flashback:
	say "[italic type]'Eggshells,' he said. 'You should find two, empty but mostly whole.'[line break][line break]'Well,' you said, 'That's easy enough. Hod down the road has a hen, and --'[line break][line break]'No,' he interrupted with a shake of his grey head. 'You've got to find them in the wild places in between, where nobody lives. Not even them. Go out in the hour just before sundown, when they're not quite awake yet...'[line break][line break][roman type]Remembering, you look at the sky, reflexively.";
	try examining the sky;
	Now EggshellFlashbackState is true;

Instead of searching the reeds:
	if the nest is visible and the cracked eggshell is not in the middlereeds and the player is not holding the cracked eggshell:
		say "Careful not to disturb the nest, you poke through the ground around it. Your efforts are rewarded: Not far away, among a small pile of the birdish refuse on the ground, lies a small egg.";
		Move the refuse pile to the MiddleReeds;
		Move the cracked eggshell to the middlereeds;
	otherwise if invisible bird is in the MiddleReeds:
		try examining the invisible bird;
	otherwise:
		say "You part the reeds nearest you and peer at the marshy ground underneath them, but find nothing useful.";

Before examining the reeds:
	If invisible bird is in the MiddleReeds:
		instead try searching the reeds.

Instead of searching the refuse pile, [try searching the reeds.] try examining the refuse pile. The refuse pile has the description "Collected under the nest is a small pile of bird-leavings.[if the cracked eggshell is in the middlereeds][paragraph break]You spy a small egg lying among the offal."

Before examining the refuse pile:
	If the player does not carry the cracked eggshell:
		Now the cracked eggshell is in the middlereeds;

Instead of taking the refuse pile:
	If the cracked eggshell is in the middlereeds:
		Say "You pluck the egg from the mound of bird-leavings.";
		Try taking the cracked eggshell instead;
	Otherwise if the player carries the cracked eggshell:
		Say "There's nothing else in that pile worth carrying around." instead;
	Otherwise:
		Move the cracked eggshell to the middlereeds;
		Say "The pile underneath the nest is made of stuff you've no reason to carry around. But you do see a small egg lying amid the offal. You pick that up.";
		Try taking the cracked eggshell;

Before searching the reeds for the first time:
	If EggshellFlashbackState is false:
		Deliver the eggshell flashback.

Instead of taking the reeds, say "Many's the time you have come here to gather reeds for thatching, either for yourself to to trade with neighbors. But, that's not what you're here for now."

The MiddleReeds is a room with printed name "Among the reeds". The description is "The familiar reed bank behind your cottage surrounds you, filling the damp space between your home and the river to the south."

To say flittiness:
	If invisible bird is in the middlereeds and the flittiness of invisible bird is true:
		Now the flittiness of invisible bird is false;
		say "[paragraph break]In the corner of your eye: a flitting shadow within the reeds, near a particularly tall stalk. That bird, again?[run paragraph on]".

Instead of going north from the MiddleReeds for the first time:
	say "As you start back towards your home, movement among the reeds catches your eye: A little reed-bird flies in from the riverbank and vanishes into the green, near a tall stalk with an early flower."; 
	move the Invisible Bird to the MiddleReeds;
	Move the tall stalk to the middlereeds;
	If EggshellFlashbackState is false:
		Say "[line break]";
		Deliver the eggshell flashback;

After entering the MIddleReeds while invisible bird is in the MiddleReeds for the first time, now the flittiness of invisible bird is true.	

Instead of going up in the middlereeds, say "Nothing for you up there." Instead of going down in the middlereeds, say "You're already earthbound."

Instead of going nowhere from the MiddleReeds, say "[one of]You push through the reeds for a few yards, the damp earth squishing beneath your bare feet.[or]A few damp steps take you to a different spot within the familiar reed bank.[or]You meander a bit through the reeds, hearing their rustle as they brush past.[purely at random]". Instead of going west from the MiddleReeds, try going east.

After taking an eggshell:
	If the player carries two eggshells, say "[italic type]'Once you've found those eggshells,' the tailor continued, 'what you do is -- this sounds strange, but that's the whole point, see -- you need to fill them up with water. Then you carry them, one in each hand, like they're the heaviest buckets, you carry them right back into your cottage, and you show them to him.'[paragraph break]He paused then, but you only nodded, unsure what to say to all this.[roman type][line break]";
		

After going to the MiddleReeds while the player carries the cracked eggshell:
	If the nest is in the MiddleReeds:
		Remove the nest from play;
		Remove the cuckoo chick from play;
		Remove the refuse pile from play;
		Remove the tall stalk from play;
		Move the fake stalk to the middlereeds;
		Say "The wind shifts the reeds, hiding the bird's nest from sight. You still see the tall stalk marking where you found it earlier, not far away.";
	Continue the action;

Instead of examining the fake stalk for the first time:
	Say "You walk towards the tall reed, but find yourself confused as you draw near. This doesn't seem like the place you found the nest earlier. Looking again around the reed bed, you see a number of flowering reeds just as tall as this one, and that nest is nowhere that you can see.[paragraph break]For a handspan of a moment, the breeze settles, and the reeds['] rustling stops.[if the player has been in the garden]And again, the silence from the cottage presses down on you.[otherwise]Something seems wrong, in the silence. You find yourself looking to your cottage.";
	Now the fake stalk is scenery;

Instead of listening while the player is in the reed banks, say "You pause, listening as the reeds rustle in the gentle breeze, willing the familiar whispering to steady your mind and hands."

Instead of looking under the reeds, try searching the reeds.

The distantRiver is scenery in the middlereeds with description "The river lies just to the south, its sight blocked from where you stand by the reeds['] thick, healthy growth." Instead of doing anything other than examining to the distantRiver, try examining the distantRiver. Understand "river" as the distantRiver.

Section 4 - The Beach

North of the Beach is the MiddleReeds. The Beach has the description "A small bulge of sandy beach, providing a place to stand comfortably and access the river water clear of the reeds. The river to the south curves gently around it."

Instead of going south in the beach, say "You saw to your washing and all that before you began. Best focus on your task." Instead of entering the river, try going south.

Instead of going nowhere in the beach, say "The only place to go from here is north, into the reeds and back towards your cottage.";

The river is in the Beach. "The river flows here, as it always has, clear and cool." The description is "This river has provided you water for as long as you've lived here, and of course sustains the reeds as well."

Instead of drinking the river, say "You saw to your thirst and all that before you began. Best focus on your task."

Instead of swimming or swimming in in the beach, try going south.

After examining the river:
	If RiverFlashbackState is false:
		Deliver the river-tossing flashback.

[ Let's implement filling up the eggshells with water. ]

Understand "fill [something] with [something]" as inserting it into (with nouns reversed).
Understand "fill [things] with [something]" as inserting it into (with nouns reversed).
Understand "put [something] in/inside/into [things]" as inserting it into.

A container can be waterfilled or empty.

[ Ripping off the "Limbo" idea from the recipe book's "Pizza Prince" example]
A water blob is a kind of thing. Two water blobs are in Water Limbo. A water blob has the printed name "water". The indefinite article is "some". A water blob has the description "Water from the river."

Instead of taking a water blob, say "No, what you've been told to do with the water is clear. Best to not spoil it."

Instead of drinking a water blob, say "The water in the eggshells is not for you to drink."

Definition: a container is waterfilled if it contains a water blob.
Definition: a container is non-waterfilled if it does not contain a water blob.
Definition: a container is empty if it contains nothing.
The chosen blob is a thing that varies.

Instead of inserting the river into an eggshell (called the eggshell):
	If the eggshell is waterfilled:
		say "Fill the same eggshell twice? No, you wouldn't try to fool with things that way. Best to find another empty one.";
	Otherwise if the eggshell is not empty:
		say "That eggshell is not empty.";
	Otherwise If the player is carrying one empty eggshell and the player is carrying one waterfilled eggshell:
		say "Careful not to spill any water from the other one, you crouch and fill the empty shell from the river. When you stand again, you hold two water-filled eggshells, one in each hand.";
		Now the chosen blob is a random thing in Water Limbo;
		Move the chosen blob to the eggshell;
	Otherwise:
		say "You dip the eggshell into the river, then stand back up again, careful not to spill any.";
		Now the chosen blob is a random thing in Water Limbo;
		Move the chosen blob to the eggshell;
		
[PV COMMENT][Instead of inserting the river into two eggshells:
	say "One by one, you dip the eggshells into the river. Careful as you can manage, you stand back up again. You now hold two water-filled eggshells, one in each hand.";	
	Repeat with eggshell running through every empty eggshell carried by the player:
		Now the chosen blob is a random thing in Water Limbo;
		Move the chosen blob to the eggshell;]
	
Instead of taking the river:
	If the player carries exactly one eggshell and the player carries exactly one waterfilled eggshell:
		say "Fill the same eggshell twice? No, you wouldn't try to fool with things that way. Best to find another empty one.";
	Otherwise if the player carries exactly two waterfilled eggshells: 
		say "You examine your work. No, both shells are still full of water. This part is done.";
	Otherwise if the player carries at least one eggshell:
		Repeat with yeggshell running through every non-waterfilled eggshell carried by the player:
			Say "(with [the yeggshell])";
			Try inserting the river into yeggshell;
	Otherwise:
		Say "You have nothing to carry the water in.";

Instead of inserting anything into the river:
	If RiverFlashbackState is false:
		Deliver the river-tossing flashback;
		Say "[paragraph break]";
	Say "You shut your mind against any further thoughts of casting things into the river. There'll... there'll be time enough for that later.";
	
Instead of throwing something (called the foo) at the river, try inserting the foo into the river.

To deliver the river-tossing flashback:
	Say "[italic type]'But what do I do with it then?' you asked.[line break][line break]'Once it's revealed itself to you? That's simple,' said the tailor. 'Snatch it up, carry it out of your cottage, and throw it in the river.'[line break][line break]You tried to accept this matter-of-factly, but you must not have done well. The tailor only shrugged. 'Throw it into the river,' he repeated, 'and its own kind will come for it. Then they'll have to return what they took from you.'[paragraph break][roman type]";
	Now RiverFlashbackState is true;

Understand "water" as the river;

Before eating the river, try drinking the river instead.

The sand is scenery in the beach. Understand "beach" as the sand. The sand has description "Just bare sand, wet but too gritty to feed the reeds." Instead of doing anything except examining to the sand, say "This infertile stuff has little use to you, and certainly none now."

Instead of doing anything except examining or taking with a water blob (called the blob), try taking the blob.

Instead of going the reeds when the player is in the beach, try going north.
Instead of entering the reeds while the player is in the beach, try going north.

Chapter 2 - The Garden

North of the MiddleReeds is the garden. The garden has the printed name "Outside the cottage". The description of The Garden is "A space in front of your home, long ago cleared from the reed bank to the south. You can see the road from here, and of course the forest beyond it.[paragraph break]Your garden lies here, good earth and green, a row of stones marking it off.[paragraph break]The doorway to your cottage is to the east. You could also walk around the cottage, to the northeast or the southeast, towards the little clearing you know is there.[if the silence is known][paragraph break]Silence, especially strange for this time of day, sits heavily in the clearing."

Instead of going north in the garden, try entering the forest.
Instead of entering the cottage, try going east. Instead of going inside in the garden, try going east.

Instead of entering the forest, say "True, you are supposed to look in the wild places. But the forest[if north is the noun] across the road[end if]? You know what lives there, and they don't need to know what you're looking for.[paragraph break]Best leave the forest until there's no other place to go."

[ This is tortured. I need a better way of doing this.]
The garden can be looked-at or not-looked-at. The garden is not-looked-at.

After looking in the Garden:
	If the garden is not-looked-at:
		Say "Something is wrong.";
		The player realizes what is wrong in one turn from now;
		Now the Garden is looked-at.

At the time when the player realizes what is wrong:
	Say "You realize what's wrong now. It's quiet.[paragraph break]You were so involved among the reeds just now that you hadn't paid it mind, but: the cottage is [italic type]silent[roman type].[paragraph break]";
	Now the silence is known;
	If the current action is listening:
		Set up the soft sound;
		
To set up the soft sound:
	Now the soft sound is in the garden;
	Now the louder sound is in the graves;
	Say "But: You do hear a soft sound, unfamiliar, coming from the space behind your cottage.[paragraph break]Something alive.[paragraph break]";
	Have the silence flashback.

The foodgarden is scenery in the garden with description "This is where you tend the vegetables for your potage. Wooden stakes help keep the different plants in line. An uneven line of small stones mark off the little garden's borders." Understand "plants", "garden", "tomatoes", "tomato", "vegetables", "good", "earth", "green", "greens" as the foodgarden.

Instead of taking the foodgarden, say "This is not the time to prepare supper."

The stakes are scenery in the garden. "Some of your plants need these stakes to help them grow.[if the stake is untouched][paragraph break]Most have tomatoes and such wrapped around them, but one to the side is bare." Understand "stake" as the stakes. The stakes have the printed name "stakes in the garden."

The rocks are scenery in the garden. "These rocks don't really serve the garden in any way that you can tell -- maybe they keep the reeds back? -- but they look nice.[if the rock is untouched][paragraph break]One or two of them seem to sit loosely enough in the earth to pick up, if you wanted to." Understand "rock", "line", "stone", "stones", "line", "uneven", "uneven line", "uneven line of rocks" as the rocks. The rocks have printed name "uneven line of rocks."

The cottage is scenery in the garden with description "You have lived here as long as you care to remember. And alone, for long enough that its thatched roof is increasingly your own work.[if location is the garden][paragraph break]Its doorway is to the east." Understand "roof", "thatched roof", "house", "home" as the cottage.

Instead of taking the stakes while the stake is untouched:
	Move the stake to the location;
	Try taking the stake.

Instead of taking the stakes while the stake is touched, say "There was only the one bare stake, and you have no need to tear up your garden for more."

Instead of taking the rocks while the rock is touched, say "You can't really get to the other rocks without digging. And now isn't the time for that."

Instead of taking the rocks while the rock is untouched:
	Move the rock to the location;
	Try taking the rock.

A weapon is a kind of thing. A weapon can be touched or untouched. A weapon is usually untouched.
The rock is a weapon with description "A palm-sized rock, pulled out of the earth near your garden." Understand "stone", "loose stone", "loose rock" as the rock. The stake is a weapon with description "A wooden stake, pulled from your garden." Understand "stone" as the rock. Understand "wooden stake", "bare", "bare stake" as the stake. The stake is stabby.
The current weapon is a weapon that varies.

There is a weapon called the nullweapon. The current weapon is the nullweapon.

Report taking the stake for the first time:
	say "You pull one of the stakes out of the earth, and wrap your hand tightly around one end, holding like a club." instead.
	
Report taking the rock for the first time:
	say "You pull a small, round rock from the earth. Amidst worries of eggshells, you find comfort in its solid heft."

Before taking a weapon:
	If the player is holding a weapon (called the weapon) and the noun is not the weapon:
		say "You toss [the weapon] aside.";
		Move the weapon to the location;
		Continue the action.
		
After taking a weapon (called the weapon):
	Now the current weapon is the weapon;
	Now the weapon is touched;
	Continue the action.		

After dropping a weapon:
	Now the current weapon is the nullweapon;
	Continue the action.

Before going to the graves:
	If the silence is unrealized:
		Instead say "You look down the path leading behind the cottage, but find yourself frozen to the spot, listening...";
	Otherwise if the soft sound is not in the garden and the stoat carries the whole eggshell and the stoat is not in the graves:
		Say "You take a few steps around the side of the cottage, but stop short when a soft sound breaks the heavy silence. A scrabbling, snuffling sort of sound, coming from behind the cottage.[paragraph break]It sounds like something alive.[paragraph break]";
		Have the silence flashback;
		Say "[line break][roman type]You remain in the garden, and in the not-quite-silence.";
		Now the soft sound is in the garden;
		Now the louder sound is in the graves;
		Stop the action;
	Otherwise if the player is not holding a weapon and the stoat is not in the graves and the stoat carries the whole eggshell:
		say "Hearing that scratching, snuffling sound again, you hesitate. [if the player carries an eggshell]All you're carrying is this eggshell[otherwise]You are empty-handed[end if], and you'd feel bolder if you held something[if the player carries an eggshell] a bit more[end if] solid. Something that would do in a pinch, if it came to it." instead;
	Otherwise:
		continue the action.
	
Understand "behind", "behind the cottage", "behind the house", "behind house", "around", "around the cottage", "around the house", "around house" as northeast when the location is the garden.
Instead of going southeast in the garden, try going northeast.

Instead of taking the garden, say "Now's not the time for gathering food.";

Instead of searching the cottage, try going east.
Instead of examining east, try going east.

[Instead of going west in the garden, say "You could start down the road now, but it would be getting on dark by the time you got anywhere. All that's in between is forest, and you've no business there."]
[Instead of entering the road, try going west.]
Instead of going west in the garden, try going RoadTravel.

Instead of going nowhere in the garden, say "Nothing that way...[paragraph break]Your cottage's doorway lies to the east, and the reed banks whisper to the south. There's also that clearing behind your cottage."

RoadTravel is a direction. Understand "road", "path", "down road", "down path", "enter road", "use road" as RoadTravel. [PV COMMENT][The opposite of RoadTravel is anti-RoadTravel.]
[Instead of going RoadTravel in the garden, try going west.]
Before going RoadTravel: say "You could start down the road now, but it would be getting on dark by the time you got anywhere. All that's in between is forest, and you've no business there."; Stop the action.

Instead of going northwest in the garden, try going RoadTravel.

Instead of examining RoadTravel, say "This road runs east and west, following the river. But it leads to no place very nearby. Surely you can find what you need in the familiar places by your own cottage."

Before entering RoadTravel: Try going RoadTravel; Stop the action.

Instead of going northeast in the graves, try going RoadTravel.

Instead of going the reed backdrop when the player is in outdoors, try going south.
Instead of entering the reed backdrop while the player is in outdoors, try going south.

Section 1 - Listening to stuff in the garden 

Instead of listening while the player is in the garden:
	If the soft sound is in the garden:
		Try listening to the soft sound;
	otherwise if the silence is known:
		Try listening to the cottage;
		If the stoat carries the whole eggshell and the stoat is off-stage:
			Set up the soft sound;

To have the silence flashback:
	Say "[first time][italic type]The tailor gestured to some mushrooms growing near your garden. 'Fairy ring,' he said. 'These grow where they gather and dance, in the forest, and also where they mean to meddle, in the places we live.' Looking again, yes, the mushrooms did seem to have a sort of circular pattern to them.[paragraph break]'You musn't let them grow so near your home like this, first of all,' he said, 'as it makes them bolder.'[paragraph break]'All right,' you said, unsure why his voice seemed so heavy with concern. 'I can just treat them like the weeds in the garden, then.'[paragraph break]'Yes...' he said, and paused before looking at you again.[paragraph break]'There's something else.'[only][roman type]"

The mushroom ghost is scenery in the garden with printed name "mushrooms that used to be here". Understand "ring", "fairy ring", "mushroom", "mushrooms" as the mushroom ghost. Instead of doing anything to the mushroom ghost, say "You've long since seen to the mushrooms in the garden. They're gone now."

Instead of listening to the cottage, say "You know from hard experience that the cottage oughtn't be silent at this time of day. But, it's so."

Instead of listening to the forest, say "The voice of the forest has nothing meant for your ears. And especially not today."

Instead of listening to the reed backdrop, say "The reeds['] familiar, constant whispering tries to reassure you. But it's at your back, now."

Instead of listening to the silence, try listening.

A sound is a kind of thing. It is scenery. 
A sound-backdrop is a kind of backdrop.
[Bah, I don't know how to get around the requirement for "thingy" here.]
Instead of examining a sound (called the thingy): try listening to the thingy.
Instead of examining a sound-backdrop (called the thingy): try listening to the thingy.

The soft sound is a sound. Understand "noise" as the soft sound.
The louder sound is a sound. Understand "noise" as the louder sound.
The silence is a sound-backdrop. It is in the garden and the graves.
The silence can be known or unrealized. The silence is unrealized.

Instead of going south from the garden while the silence is unrealized, say "You look back at the reeds, but find yourself frozen to the spot, listening...".

Instead of listening to the soft sound:
	say "The silence is not complete. Straining to hear, you can make out a scrabbling, a snuffling. Very soft, but in the stillness around your home, it stands out.[paragraph break]The sound is coming from the place behind the cottage.";
	Now the louder sound is in the graves;

Northeast of the Garden is The Graves. The Graves has the description "Another small clearing behind your cottage. You do not come here very often, or anyway not lately.[paragraph break]You could wander back into the reeds to the south, or return to your garden by walking northwest or southwest around your home. The road lies to the north, where it runs east, vanishing into the dark wood.[paragraph break]The forest also looms to the east of where you now stand. An old fallen log reaches out of it, into the clearing.[paragraph break]Two standing stones mark the earth here, along the rear wall of the cottage. One, waist-high, stands larger than the other." The graves has printed name "Behind your cottage".

South of the graves is the MiddleReeds. Instead of going east in the graves, try entering the forest. Instead of going north in the graves, try entering the forest.

Instead of going nowhere in the graves, say "Nowhere to go that way...[paragraph break]From here, you can return to garden in front of your cottage, walking around to the northwest or southwest. And you can always retreat back into the reeds to the south.";

Section 2 - The graves

A gravestone is a kind of thing. A gravestone is scenery.

The stonepair is a gravestone in the graves. The stonepair is scenery. The stonepair is ambiguously plural. Understand "stones", "standing stones", "graves", "gravestones", "tombstones" as the stonepair. The stonepair has the description "One of these stones stands as tall as your waist. And then a small one, only ankle-high, but still conspicuous."

Instead of pushing, pulling, taking, looking under, or attacking a gravestone, say "You would never disturb where these stones rest."

The tall stone is a gravestone in the graves with description "A large, heavy stone, roughly but recognizably marked with the sign of the Eye." 

After examining the tall stone for the first time, say "The ghost of an ache passes through your shoulders, remembering that stone's weight. It wasn't so long ago." Understand "gravestone", "taller stone", "tall stone", "large stone", "larger stone", "large", "larger", "tall", "taller" as the tall stone.

The eye is scenery in the graves with description "Sometimes it is good to come here and pause. Maybe it's been too long since you last have, in fact. But now is no such time." Understand "sign", "mark" as the eye.

The short stone is a gravestone in the graves with description "A smaller, thin, black stone, with the sign of the Eye chalked upon it." Understand "gravestone", "short stone", "shorter stone", "small stone", "smaller stone", "small", "smaller", "short", "shorter", "little", "ankle", "ankle-high", "ankle high" as the short stone.

The log is scenery in the graves with description "This ancient tree has lain on this spot since you first came here, and surely a lifetime or more before that. [paragraph break]Though dead, it's not a decayed thing. Rather, it's part of the living forest, and maybe the spot at which its reach comes closest to your cottage. It makes you think more of the little finger of a sleeping giant, whose body lies vast in the shadows of the wood beyond.[if the fairy ring is in the location][paragraph break]Near one end, a half-circle of milk-colored mushrooms bulge from the earth.[end if]"

Understand "tree", "old", "fallen" as the log.

Instead of pushing, pulling, taking, looking under, or attacking the log, say "Though it be dead, you can no more push this huge log around than you could a boulder."

The fairy ring is scenery in the graves with description "A circle of bulbous, sickly-white mushrooms, growing around one end of the ancient log. They look like malformed little people, their bodies twisted into stooped shapes underneath the large, fleshy caps they wear. Twisted maybe from pain, maybe from laughter.[if the stoat is in the location][paragraph break]The little forest animal lies within, noisily cleaning out an eggshell.[otherwise][paragraph break]From where you're standing, the log blocks several of the mushrooms from sight -- but that they lie in a circle is still clear enough.[end if][first time][paragraph break]When did this ring appear? Has it really been so long since [if the fetus is not in the cracked eggshell][paragraph break][italic type]the dead thing falling out, wet, the earth swallowing it[roman type][paragraph break][end if]you were last here?[only]". Understand "mushroom", "mushrooms", "circle", "half", "half-circle", "half circle" as the fairy ring.

Instead of attacking the fairy ring:
	If the stoat is not in the location and the stoat carries the whole eggshell:
		Say "Controlling your breath, you approach the fairy ring.";
		Try searching the fairy ring;
	Otherwise:
		Say "Grunting, you kick one of the mushrooms, maybe a little harder than you needed to. It bursts easily, leaving scarcely a trace behind.[paragraph break][if the stoat is in the location]That gets the little animal's attention. In a flash, it vanishes into the wood, leaving its meal behind.[paragraph break][end if]Soon enough your work is complete. The ring is gone.[paragraph break]It's just you and the silence, now.";
		Remove the fairy ring from play;
		If the stoat is in the location:
			Remove the stoat from play;
			Move the whole eggshell to the graves;

Instead of taking the fairy ring, say "Pluck them up, like flowers? No."

After examining the short stone while the cracked eggshell does not contain the fetus for the first time, say "[italic type]...the dead thing, so tiny, sliding from the egg, out of your hands, into the earth...[roman type][paragraph break]No. Now's not for that."

A stoat is an animal. "Behind the trunk, a stoat dines noisily on a stolen bird's egg, unaware of your presence." It carries the whole eggshell. Understand "animal", "creature", "fairy" as the stoat.

The description of the stoat is "Normally, forest animals like this stoat shy from people, but this one hasn't noticed you. This is because it has buried its snout into a bird's egg, which it is now licking clean. You can plainly hear its loud lapping and snuffling as it works to clean out every wet morsel."

Instead of attacking the stoat:
	If the current weapon is the rock:
		say "You throw the rock at the little animal. It lands wide, and the creature wastes no time in scurrying back into the forest, leaving its meal behind.";
		Move the rock to the graves;
	Otherwise if the current weapon is the stake:
		say "The little animal isn't so absorbed in its meal that it doesn't hear you approach. It pulls its head from the egg to regard you just as you start to raise your club. Then, quick as a flash, it's gone, swallowed up by the forest.[paragraph break]It has left its egg behind.";
	Otherwise:
		say "The little animal isn't so absorbed in its meal that it doesn't hear you approach. It pulls its head from the egg to regard you just as you draw near. Then, quick as a flash, it's gone, swallowed up by the forest.[paragraph break]It has left its egg behind.";
	Remove the stoat from play;
	Move the whole eggshell to the graves.

[ Instead of stabbing the stoat, try attacking the stoat. ]

Instead of searching the log:
	If the stoat is not in the graves and the stoat carries the whole eggshell:
		Move the stoat to the graves;
		say "[If the current weapon is not nothing]Tightening your grip on [the current weapon], y[otherwise]Y[end if]ou peer behind [the log], so that you can see the whole of the mushroom ring, and whatever else might sit inside it.[line break][line break]You see it. A skinny little man, wearing a... a fur coat, and a spotted cap? It's lying down, right in the center of the fairy ring, damn it all, and its tail twitches as it... oh.[line break][line break]You let go the breath you hadn't realized you were holding. No, it's not a little man. Though it is another sort of forest creature, true enough, and maybe no less wicked, in its way.[paragraph break]And that 'cap' does catch your attention...";
		Remove the soft sound from play;
		Remove the louder sound from play;
	Otherwise if the stoat is in the graves:
		Try examining the stoat;
	Otherwise if the fairy ring is in the graves:
		Say "Nothing behind the log now, except for the other mushrooms -- making the circular pattern they form especially clear.";
	Otherwise:
		Say "Nothing else lurks there.";
	
Instead of taking the stoat:
	Let tempWeapon be the current weapon;
	Now the current weapon is the nullweapon;
	Try attacking the stoat;
	Now the current weapon is tempWeapon;

Instead of looking behind the log, try searching the log.
Instead of searching the fairy ring, try searching the log.

Every turn while the louder sound is in the location:
	If a random chance of 1 in 2 succeeds:
		Say "[one of]You hear that snuffling noise again, from somewhere very near.[or]That one noise within the silence is very close by.[or]The shuffling, grating noise stops, then resumes.[as decreasingly likely outcomes]".

Every turn while the stoat in the location:
	If a random chance of 1 in 2 succeeds:
		Say "[one of]Heedless of your standing there, the stoat continues lapping noisily at the spotted egg, its paws grasping the shell.[or]The stoat keeps eating, unwilling to let the smallest morsel escape. Clearly, it's not giving up that egg until it's done, and who knows when that will be.[or]The stoat continues its loud meal.[stopping]".


Instead of listening while the location is the graves and the louder sound is in the graves, try listening to the louder sound.
Instead of listening while the location is the graves and the louder sound is not in the graves, say "[if the stoat is in the graves]All you can hear is that stoat[otherwise]All is quiet again[end if]."
Instead of examining the louder sound, try listening to the louder sound.
Instead of listening to the louder sound, say "You hold your breath...[paragraph break]The sound seems to be coming from behind the log.";

Instead of going northwest in the graves, try going southwest.

Check taking the whole eggshell while the stoat is visible and the stoat carries the whole eggshell:
	Let tempWeapon be the current weapon;
	Now the current weapon is the nullweapon;
	Try attacking the stoat;
	Now the current weapon is tempWeapon;
	Continue the action;
	
After taking the whole eggshell:
	If the location is the graves:
		Say "You pick up the eggshell from where the little animal left it.";
	Otherwise:	
		Say "Taken.";
	Continue the action;

Instead of throwing the rock at the stoat, try attacking the stoat.

The gravesclearing is scenery in the Graves. The description is "You stand in the small space that separates your home from the forest, and its shadows." Understand "clearing" as the gravesclearing.

Section 3 - Losing the Egg

Losing the Egg is a scene. Losing the Egg begins when the player is in the garden and the player is carrying two waterfilled eggshells. Losing the Egg ends when Crisis begins.

When Losing the Egg begins:
	say "Just as you step free of the reeds, the cracked eggshell in your hand gives way. In two eyeblinks, it collapses on itself, the water spilling between your fingers and the broken pieces of shell tumbling to the earth, useless now.[paragraph break]You look up, then, to the doorway of your cottage. Well. You [italic type]held[roman type] two full eggs. Maybe that was enough?[paragraph break]Maybe it had [italic type]better[roman type] be enough.[paragraph break]Maybe it's getting late [italic type](another reflexive look at the sky, still gray as ever)[roman type], and maybe you are in the middle of something you don't fully ken, brought about by a man who isn't even here, and maybe you should bring an end to this before it gets any later.";
	Remove the cracked eggshell from play.

Every turn during Losing the Egg:
	If the location is not Indoors and a random chance of 1 in 3 succeeds:
		If the player is in the reed banks:
			Say "[one of]A night-bird's call echoes among the reeds.[or]A wind, coming in from the north, rustles both the reeds and your shift.[or]The sky seems to grow a shade darker.[or]The reeds rustle and mutter uneasily in the evening wind.[stopping]";
		Otherwise if the player is in the clearing:
			Say "[one of]A night-bird calls out from the forest.[or]From the shadows to the north, you hear a twig snap.[or]The wind from the tall trees sounds more like muttering. You know it's not talk meant for your ears.[or]The wind from the trees, through not very cold, feels like it cuts through your shift.[stopping]";

Every turn during Crisis:
	If a random chance of 1 in 2 succeeds:
		Say "[one of][The baby] shrieks and cries.[or][The baby]'s wails reach a peak, rattling the bones in your head.[or][The baby] thrashes in [the baby possessive] cries, [if the blanket is tied]straining against the blanket.[otherwise if the player carries the baby]straining against your grasp.[otherwise]nearly falling from the chair.[end if][or][The baby]'s cries subside for a few heartbeats, then resume as loud as before.[or]For a strange moment, you think you hear the reed-bird calling again, outside. But [the baby] starts in again, wiping the sound from the air and your ears.[as decreasingly likely outcomes]".

After going east from the garden:
	Say "You pass over the woven reed mats that lie within the doorway, and then you are inside.[paragraph break]And then you turn to face it.[paragraph break]";
	Continue the action;

Chapter 3 - Inside the cottage

East of the garden is Indoors.
Instead of going outside in indoors, try going west.

Before going east from the garden:
	If Losing the Egg is happening:
		If the player carries one waterfilled eggshell:
			Continue the action;
	Otherwise if the silence is unrealized:
		Instead say "You look at your cottage, but find yourself unable to go within. Something is [italic type]wrong[roman type], and you stand, listening...";
	Otherwise:
		Say "The silence is strange, all right. But you haven't been out of the house [italic type]that[roman type] long, and don't plan on being out that much longer.[paragraph break]You chose to take up this task, and you'd best see it through... before facing what's in there.[paragraph break]";
		Display a hint instead;

After going east from the garden:
	Say "[italic type]Though his words struck you as the most absurd thing, your hand moved to cover your breast. 'But he's mine,' you said, unable to come up with a stronger protest.[paragraph break]For even now, you could hear the wailing, the din that seldom stops, that hasn't in so many months.[paragraph break]And a dark, desperate part of you wanted to hear what the tailor had to say.[paragraph break]'I know of a test,' he said[roman type].";
	Continue the action;

Crisis is a scene. Crisis begins when the baby is crying.

Instead of going west from Indoors while the baby is sniffling:
	Say "Not now. Listen..."
		
[ Put a first-time flashback here? ]
Instead of listening during Crisis, say "The crying fills your ears, the cottage. The world. And it's been going on for [italic type]so long[roman type].".
Instead of listening to anything during Crisis, try listening.

Instead of going west from Indoors while the baby is crying and the player does not carry the baby:
	If the current feeling is love:
		Say "You can't leave [the baby] now. Listen! [the baby capital pronoun] needs you.";
	Otherwise if the current feeling is hate:
		Say "And leave that thing alone in your cottage?[paragraph break]No. It's time you took care of it.";
	Otherwise:
		Say "No, this isn't right. You must have done something wrong again. It was that broken egg, surely.[paragraph break]There's still time, surely. Maybe you will try the forest this time.[paragraph break]Maybe, when you get there, you'll just keep walking.";
		End the story.

Section The baby-feeling state machine

Disposition is a kind of value. The dispositions are hate, suspicion, confusion, hope, and love.

The current feeling is a disposition that varies. The current feeling is confusion.

The changeling is scenery in indoors with printed name "the baby". The changeling is a male person. Understand "fairy", "goblin" as the changeling.

Junior is scenery in indoors. Understand "Anda" as Junior. Junior is a male person.

Expecting an answer is a truth state that varies. Expecting an answer is false.

[ So, this bit could probably be done with regular expressions instead...
but this feels more correct somehow, to be aware of the semantics. ]
[Setting action variables for doing anything in indoors:]
Before doing anything when the player is in indoors:
	If the noun is the changeling:
		If the baby is loved:
			Reprimand the player instead;
		Otherwise if the baby is hated:
			Now the noun is the baby;
		Otherwise:
			Say "Changeling.[paragraph break]";
			Consider hate instead;
	Otherwise if the second noun is the changeling:
		If the baby is loved:
			Reprimand the player instead;
		Otherwise if the baby is hated:
			Now the second noun is the baby;
		Otherwise:
			Say "Changeling.[paragraph break]";
			Consider hate instead;
	Otherwise if the noun is Junior:
		If the baby is hated:
			Reprimand the player instead;
		Otherwise if the baby is loved:
			Now the noun is the baby;
		Otherwise:
			Acknowledge Anda;
			Consider love instead;
	Otherwise if the second noun is Junior:
		If the baby is hated:
			Reprimand the player instead;
		Otherwise if the baby is loved:
			Now the second noun is the baby;
		Otherwise:
			Acknowledge Anda;
			Consider love instead;
		
Before doing something other than saying yes or saying no while expecting an answer is true:
	Now expecting an answer is false;
	Continue the action.

Instead of saying yes while expecting an answer is true:
	Now expecting an answer is false;
	If the current feeling is suspicion:
		Hate the baby;
	Otherwise if the current feeling is hope:
		If the AndaAcknowledgement is true:
			Love the baby;
		Otherwise:
			Consider love;
		
Instead of saying no while expecting an answer is true:
	Now expecting an answer is false;
	If the current feeling is suspicion:
		Say "You shake your head, against [the baby]'s continued wailing. You're just not sure, and it's so hard to [italic type]think...[roman type][paragraph break]";
	Otherwise if the current feeling is hope:
		Say "You shake your head, against [the baby]'s continued wailing. You're just not sure, and it's so hard to [italic type]think...[roman type][paragraph break]";

To consider hate:
	If the baby is not crying:
		Say "Something in the odd stillness here prevents you. You've gone through with it this far, and your next action is clear.";
	Otherwise If the current feeling is confusion:
		Now the current feeling is suspicion;
		Say "Your head rings with [the baby]'s inhuman howling as a dark thought crosses over you. Could it be true? Could this baby really be a changeling?[paragraph break][italic type]Is[roman type] it true?";
		Now expecting an answer is true;
	Otherwise if the current feeling is suspicion:
		Hate the baby;
	Otherwise if the current feeling is hope:
		Say "Your heart sinks, battered down by the howling, all the [italic type]months[roman type] of it. But this is not how babies are supposed to act, is it?[paragraph break]You look again at [the baby], at [the baby possessive] twisted features, more twisted now from the constant crying. Could it be true? Could this creature be really not yours at all, but one of the Small Folk? A changeling?[paragraph break][italic type]Is[roman type] it true?";
		Now expecting an answer is true;
		Now the current feeling is suspicion;

To consider love:
	If the baby is not crying:
		Say "Something in the odd stillness here prevents you. You've gone through with it this far, and your next action is clear.";
	Otherwise If the current feeling is confusion:
		Now the current feeling is hope;
		Say "For a moment, you close your ears to the cries, and you try to close your mind to what he had suggested, to the fact that you may have even felt some perverse disappointment with the fact that [the baby] [italic type]hadn't[roman type] leapt up and begun to talk in Goblin-tongue rhyme when [the baby pronoun] saw the eggshell.[paragraph break]But maybe that's all there is to it. Maybe it was all just a foolish suggestion from a foolish man.[paragraph break]Is this really your baby?";
		Now expecting an answer is true;
		Stop the action;
	Otherwise if the current feeling is hope:
		If AndaAcknowledgement is true:
			Love the baby;
		Otherwise:
			Say "But, no. Between [the baby]'s [one of]shrieking[or]wailing[or]crying[purely at random] and... and everything else, you just can't...[paragraph break]There is something missing.[one of][or][or][line break]A name.[stopping]";
		Continue the action;
	Otherwise if the current feeling is suspicion:
		Say "For a moment, you close your ears to the cries, and you try to close your mind to what he had suggested, to the fact that you may have even felt some perverse disappointment to the fact that [the baby] [italic type]hadn't[roman type] leapt up and begun to talk in Goblin-tongue rhyme when [the baby pronoun] saw the eggshell.[paragraph break]But maybe that's all there is to it. Maybe it was all just a foolish suggestion from a foolish man.[paragraph break]Is this really your baby?";
		Now expecting an answer is true;
		Now the current feeling is hope;

To reprimand the player:
	Say "No, there is nothing like that here. There never was.";

Section Everything Else in the cottage

[ XXX Watch that TV show to see what huts look like. ]
Indoors is a room with the printed name "Inside your cottage". The description is "Here is where you've lived for so many years, a cottage much like any other, a fine place to rest after a day gathering reeds or preparing thatch. Here you have made meals beyond counting, always for yourself, sometimes for another. It contains scattered furniture -- the largest being a table against one wall, and a cradle not far from it.[first time][paragraph break]But right now, all your attention is on the chair.[only]"

Inside indoors is a table, a cradle, and a chair.

Instead of going nowhere in indoors, say "The only way back outside is the doorway to the west."

Rocking is an action applying to one visible thing. Understand "rock [something]" as rocking.

Instead of rocking something, try pushing the noun.

Nursing is an action applying to one carried thing. Understand "nurse [something]" as nursing. Understand "feed [something]" as nursing.
Check nursing:
	If the noun is not the baby:
		Say "Nonsense.";

Instead of pushing, pulling, taking, or attacking the chair, say "Now is no time to move your furniture around."

Section Showing the shells to the baby

Instead of giving the whole eggshell to the baby, try showing the whole eggshell to the baby.
Instead of showing the whole eggshell to the baby:
	If the baby is silent:
		Say "You breathe, and gather yourself. Then you hang your arm down, making as if the eggshell is a heavy thing, hard to lift.[paragraph break]'Oh,' you say, but it comes out as a croak.[paragraph break]'...[italic type]Oh[roman type],' you say again, louder. 'I have brought back the whole river for the potage, and it is such a heavy thing! Do you see?'[paragraph break]You then lift up the eggshell, straining, as if it were a pail, filled to spilling.[paragraph break]";
		Commence sniffling;
	Otherwise if the baby is crying:
		Say "Once again, you hold up the eggshell, acting like it's a heavy thing. 'See the eggshell? See how heavy?'[paragraph break][The baby] continues to wail.";
		

To commence sniffling:
	Say "[italic type]'I've heard different things,' said the tailor, 'but they all agree that changelings can't abide humans acting strange, and using eggshells in a weird way will always set them off. When a changeling sees such a thing, it can't help but to leap up and declare, [']Crikey! I'm two hundred years old, and I've never seen anything queer as that!['] Or something of the sort, anyway. And that's how you know you've got a changeling.'[paragraph break][italic type]'But what would I do then?' you asked.[line break][line break]'Once it's revealed itself to you? That's simple,' said the tailor. 'Snatch it up, carry it out of your cottage, and throw it in the river. Throw it into the river, and its own kind will come for it. Then they'll have to return what they took from you.'[paragraph break][roman type]The baby looks right at the [if the whole eggshell is not visible]ruined [end if]eggshell with [the baby possessive] dark, dull eyes. Then [the baby pronoun] opens [the baby possessive] mouth.[paragraph break]'Cuh,' [the baby pronoun] says. 'C-cuh... Cruh...'";
	Now the baby is sniffling;
	The baby cries in one turn from now.
	
At the time when the baby cries:
	Say "[italic type]'And if the baby isn't a changeling?' you asked.[paragraph break]'Well,' said the tailor, with a smile. 'I suppose it won't say anything at all!'[roman type][paragraph break]'Cuh... k-kkaaaaaAAA[italic type]AAAAAAAAAUUUUAAAAAAUUAAA...[roman type]'[paragraph break][The baby] begins howling, just as [the baby pronoun] has been, most every day, and most of every day. For so long.[paragraph break][roman type]But... [the baby pronoun] didn't start until [the baby pronoun] saw the eggshell, this time. Does that mean something? Did it... did it work?[paragraph break]What happens now?";
	Now the baby is crying;
	
	
[ The baby will also cry after spending six turns in the cottage.]
The cry-o-meter is a number that varies. The cry-o-meter is 0.
Every turn when the location is indoors and the cry-o-meter is less than 10:
	Increase the cry-o-meter by one;
	If the baby is silent and the cry-o-meter is 10:
		Commence sniffling.


Instead of cutting the blanket:
	If the blanket is cut:
		 say "You've already seen to that.";
	otherwise if the player is not holding the shears:
		 say "You have nothing sharp enough.";
	otherwise:
		Now the blanket is cut;
		Say "The cold iron of the shears bites into the blanket.[paragraph break][italic type]It was a hard birth. Not like the last one, but hard. Still, it ended with you holding the babe in your arms. Without words to describe how you felt, what you said was this:[paragraph break]Anda.[paragraph break]You really hadn't thought of a name before now, and all at once it seemed strange that you hadn't, though you hadn't really anyone to talk to about it. But at that moment you knew it was the right name. Anda, you said again.[roman type][paragraph break]The blanket now lies raggedly open on the chair, with [the baby] sitting atop it.";
		Now the baby is portable;
		Now the blanket is portable;
	
Instead of untying the chair, try untying the blanket.
Instead of untying the baby, try untying the blanket.
Instead of untying the blanket:
	If the player carries an eggshell:
		Say "You see no way to do that while still holding onto that water-filled eggshell.";
	Otherwise if the blanket is not tied:
		Say "But the blanket is no longer tied up.";
	Otherwise if the baby is hated:
		Say "You easily undo your earlier work. Now the blanket lies untied, with [the baby] sitting atop it.";
		Now the blanket is untied;
		Now the baby is portable;
		Now the blanket is portable;
	Otherwise:
		Say "[One of]Reaching to undo the knots you made earlier, you notice that your hands are shaking. And though you don't think the knots are particularly tight, you can do no more than scrabble and paw at them.[or]You try again, but with shaking hands, can only paw at the knots.[stopping]";
	
Instead of giving the shears to the baby, try showing the shears to the baby.
Instead of showing the shears to the baby:
	If the baby is not crying:
		say "You hold up the shears for [the baby] to see. But [the baby pronoun] doesn't react in any way that you can tell. [The baby capital pronoun] only continues to stare at the eggshell you carry.";
	Otherwise if the blanket is tied:
		say "You hold up the shears for [the baby] to see. But [the baby pronoun] doesn't react in any way that you can tell. [The baby capital pronoun] only continues to cry and thrash against the tied-up blanket.";
	Otherwise:
		Say "You hold up the shears for [the baby] to see, but [the baby pronoun] doesn't react in any way that you can tell. [The baby capital pronoun] just keeps crying.";

After putting the whole eggshell on the table:
	Say "The eggshell tips over as soon as you set it down on the table. The water spills across the surface and onto the floor.";
	Repeat with water running through every water blob in the whole eggshell:
		Remove the water from play;
	Now the whole eggshell is empty.
	
[Before nursing the baby:]
Instead of nursing the baby:
	If the blanket is tied:
		Say "But the blanket still holds [the baby] fast to the chair.";
		Stop the action;
	Otherwise if the player does not carry the baby:
		Try taking the baby;
	If the baby is hated:
		Say "Bile rises in your throat to even think of all the times you let this twisted creature suckle at your breast." instead;
	Otherwise if the blanket is tied:
		Say "But the babe is still tied to the chair." instead;
	Otherwise:
		If NursingPonderState is false:
			Say "You pause, catching yourself wanting to go through the familiar motions, in spite of all the confusion. So young, but still you've lost count of the days, the number of times you've lifted [the baby], just to hold, or to hold to your breast. And weren't those some of the most quietly pleasant times you've spent with [the baby], despite everything?[paragraph break][italic type]Quiet, yes,[roman type] says the darker part of you. [italic type]Quiet because that's the only time it doesn't cry, that and sleeping.[roman type] And you hear thoughts darker still -- [italic type]They cry and carry on so, because they're greedy, greedier than any human child would be[roman type] --  but you know those words aren't yours.[paragraph break]";
			Now NursingPonderState is true;
[		Otherwise:
			Say "Irresistably, your desire to mother [the baby] wells up again.[paragraph break]";
			]
		Consider love;
		if the baby is loved:
			Say "You slip your shift down one shoulder, and cradle [the baby] up to your breast. 'Hush,' you whisper to him. 'Hush. There,' as he begins to suckle, once again.[paragraph break]As you sing softly, you know that [the baby]'s peace won't last. [paragraph break]But babies grow up. They must. And this is your baby.";
			End the story finally;
		Otherwise:
			Say "[line break](You find yourself still holding [the baby], uncertain and trembling.)"

Instead of pushing the cradle, say "It's not the sort of cradle that rocks." Instead of pulling the cradle, try pushing the cradle. Understand "crib" as the cradle.

The chair is fixed in place. It has the description "A small chair of rough hewn wood, but countless years have worn most of its surfaces down to comfortable smoothness. It is the only such thing you own." It has the initial appearance "[if the blanket is tied][The baby] sits on the chair, held upright by the blanket you'd tied before you began your search.[otherwise if the blanket is not tied and the baby is on the chair][The baby] sits on the chair.[end if][if the baby is crying and the blanket is tied] [The baby capital pronoun] thrashes and cries, but your knots hold.[otherwise if the baby is crying and the baby is on the chair] [The baby capital pronoun] thrashes and cries, clutching the opened blanket.[otherwise if the baby is not on the chair]The chair is empty, but for the now-open blanket.[end if]". Instead of entering the chair, say "[if the baby is on the chair]Not while [the baby] is on it![otherwise]Not now."

The table has description "Just a simple table, made of wood." The table is scenery. The table is a supporter.

The cradle has description "A wooden cradle, simply but sturdily made." The cradle is a container. The cradle is scenery.

The blanket is on the chair. It is fixed in place. Instead of taking the blanket, try examining the blanket. Understand "knots" as the blanket.

The blanket can be tied, untied, or cut. The blanket is tied. The blanket is scenery.

The blanket has the description "The blanket is tied fast to the chair[if the blanket is cut], but you've cut it in two[else], in such a way that it restrains [the baby] from slipping out[end if]."

A male person called the baby is on the chair. He has the description "[If the baby is crying][The baby] cries and cries, [the baby possessive] face twisted around [the baby possessive] endless howling.[otherwise if the baby is silent]Slackjawed, the baby stares at your eggshell with [the baby possessive] dull, dark eyes.[otherwise]Slackjawed, the baby regards you back with [the baby possessive] dull, dark eyes."

Section How is babby formed?

Instead of taking the baby:
	If the blanket is tied:
		Try examining the blanket;
	If the player is holding the baby:
		If the baby is loved:
			Say "You already cradle [the baby] in your arms.";
		Otherwise:
			Say "[The baby] already squirms in your grasp.";
	Otherwise:
		If the blanket is cut:
			say "You carefully lift [the baby], cradling [the baby objective pronoun] in your arms.";
			Move the baby to the player;
		If the blanket is untied:
			say "You snatch up [the baby], heedless of [the baby possessive] wailing.";
			Move the baby to the player;

Before dropping the baby:
	If the baby is loved:
		instead say "You'd never.";
	Otherwise if the baby is hated:
		Instead say "Not here.";
	Otherwise:
		Instead say "You look at the door. Then you look at the crib. Your head rings with [the baby]'s crying, and your thoughts feel clouded. You can't just [italic type]drop[roman type] [the baby objective pronoun], but...";
	

The baby can be loved, hated, or neither. The baby is neither.
The baby can be silent, crying, or sniffling. The baby is silent.

There is a weapon called the pair of cold iron shears. The shears have the initial appearance "A pair of iron shears lies on the table, wedged open." The pair is ambiguously plural. The pair has the description "Not the sort of tool you usually use for thatching, these were left here for a different purpose. One not so sure as shaping reeds, weaving them. There, at least, you know when you're done, when it works." The shears are stabby. The shears are undescribed. The shears are on the table.

Before examining the table for the first time:
	Now the shears are described;
	Continue the action;

Instead of closing the shears:
	If the player does not carry the shears:
		Try taking the shears;
	If the player carries the shears:
		Say "You allow yourself a couple of practice snips." 

Instead of opening the shears, try closing the shears. Instead of cutting the shears, try closing the shears.

After examining the pair for the first time, say "[italic type]'Cold iron,' he'd said, taking the spare pair of shears from his belt, holding it up for you to see. 'They fear it, you know. An open pair of shears is especially frightful to them.'[paragraph break]Before he left, you did the thing you did on his visits, at least since you'd been alone. Together, out in the reeds, away from the noise.[paragraph break][roman type]Payment,[italic type] a bitter part of you thinks. But, no. It wasn't like that. It was nice.[paragraph break][roman type][if the baby is crying]A strangled gargle from the baby -- one of its usual sounds, but still startling -- brings you back to the present. You find that you'd been looking at [the baby] anyway, remembering.[otherwise]You drift back to the present, and find yourself looking at [the baby]."

After taking the shears for the first time:
	Say "The iron seems startlingly cold as you close your hand around it." Instead;
	Now the current weapon is the shears;

Instead of inserting the baby into the cradle:
	If the blanket is tied:
		Say "But the blanket still holds [the baby] fast to the chair.";
		Stop the action;
	Otherwise if the player does not carry the baby:
		Try taking the baby;
	If the baby is hated:
		Say "No, [the baby] has lain there long enough.";
	Otherwise:
		If the baby is not loved:
			If CradlePonderState is false:
				Say "You pause, catching yourself thinking, in spite of all the confusion: [italic type][the baby] just needs to be put to bed, is all[roman type]. And how many times have you thought that before! And yet, more than once -- often, in fact -- you've found yourself watching over the baby in its cradle, sleeping softly, and couldn't imagine yourself belonging anywhere else.[paragraph break][italic type]Oh yes,[roman type] sighs the darker part of you. [italic type]Very easy, because that's the only time it's quiet. That and when it's feeding.[roman type][paragraph break]";
				Now CradlePonderState is true;
[			Otherwise:
				Say "Irresistably, your desire to mother [the baby] wells up again.[paragraph break]";
]
			Consider love;
		If the baby is loved:
			Say "Gently, you lower [the baby] into his cradle, then pull up the chair beside it and sit. You yourself can barely hear the lullaby you sing over his crying, but you know that soon enough he'll sleep.[paragraph break]And soon enough again, God willing, he'll grow. Growing is what babies do, and this is your baby.";
			End the story finally;
		Otherwise:
			Say "[line break](You still hold the baby, uncertain.)";

Instead of kissing the baby:
	If the baby is hated:
		Say "This creature has stolen enough affection from you. Affection, and more.";
	Otherwise:
		Try nursing the baby.

Instead of going west from indoors while the player carries the baby:
	If the baby is loved:
		Say "No, fresh air is not what [the baby] needs right now.";
	Otherwise:
		If the baby is not hated:
			Say "[The baby] in your arms, you pause at the doorway, considering the darkening sky outside, the way the wind shakes the reeds.[paragraph break]The river that you know is there.[paragraph break]";
			Consider hate;
		If the baby is hated:
			Say "Holding the squirming, bawling creature at arms['] length, you walk back out into the windy evening. [paragraph break]You wonder how the exchange will happen. Perhaps they already know that their trick is ended, and they will be waiting for you with your real baby. Or maybe you'll come back home to find him asleep in the crib; you're rather sure you've heard of that happening before. Either way, they'll [italic type]have[roman type] to return him, once you throw their false child back to them. That's simply how it works.[paragraph break]You can't help but smile, looking forward to seeing your child again, as you make your way south, towards the river.";
			End the story;	
		Otherwise:
			Say "[line break](You take a step backwards, away from the doorway. For now.)";

Instead of attacking the baby:
	If the baby is loved:
		Say "A spanking is certainly not what [the baby] needs now.";
	Otherwise:
		If the baby is not hated:
			If AttackPonderState is false:			
				Say "Blunt, hurtful thoughts crowd your mind[if the player carries the baby] as you consider [the baby], squalling and squirming in your arms[otherwise if the current weapon is the nullweapon] as your free hand closes into a fist[otherwise] as your grip tightens on the [current weapon][end if]. But you stay your hand.[paragraph break]Yes, once you may have tried to slap some quiet into [the baby], or shake the noise out of [the baby objective pronoun]. (Maybe more than once. But surely not much more.)[paragraph break]But maybe that's just it. Maybe this isn't your baby after all, but a tricksome forest-creature, too old and patient to take a lesson from a mother's gentle hand.[paragraph break]";
				Now AttackPonderState is true;
			Otherwise:
				Say "The hurtful thoughts press on your mind again.[paragraph break]";
			Consider hate;
		If the baby is hated:
			Say "Maybe it would feel good to make the vile little thing pay for all it's taken from you. But you know that's not the proper way to dispose of this creature, and the cost would be too high. Leaving aside the question of whether it's a mortal sin to kill a changeling, it's doubtful you'd see your real child again.[paragraph break]There's a better way.";	

Understand "stab [something]" as cutting.

Understand "shake [something]" as attacking.

To hate the baby:
	Say "Cold, welcome certainty calms your heart and stills your shaking hands. Yes. Of course this isn't really your baby. Just look at it. [italic type]Just listen to it,[roman type] you think to yourself, and catch yourself almost laughing, giddily. As if you've had any choice but to listen, all this time![paragraph break]It is a monster, a creature of the forest, come to play you for a fool, and it did. For a while. But God bless that tailor for knowing what to do.[paragraph break]And now you know what you have to do, too.";
	Now the printed name of the baby is "changeling";
	Now the baby is not proper-named;
	Now the baby is hated;
	Now the current feeling is hate;

To love the baby:
	Say "You step back and look at [the baby], at its face. Yes, its features are all twisted up by its crying, and yes, maybe they're a little strange just the same.[paragraph break]But the deeper resemblance is undeniable. Part of you wants to curse his cowardice for suggesting that it was any other way. But, there will be time for that later.[paragraph break]The rest of you, the whole of your heart, reaches out to the child. You know, as sure as the day it was born, that it -- that [italic type]he[roman type] -- is truly yours.";
	Now the printed name of the baby is "Anda";
	Now the baby is proper-named;
	Now the baby is loved;
	Now the current feeling is love;
	Now the baby pronoun is "he";
	Now the baby possessive is "his";
	Now the baby capital possessive is "His";
	Now the baby objective pronoun is "him";
	Now the baby capital pronoun is "He";

Instead of saying anda while the location is indoors:
	Acknowledge Anda;
	consider love;

[ Instead of stabbing the baby with the shears, try stabbing the baby. ]
[Instead of cutting the baby: 
	If the baby is not hated:
		Hate the baby;
	say "That would be a clean murder. But you know that's not the proper way to dispose of this creature, and the cost would be too high. Leaving aside the question of whether it's a mortal sin to kill a changeling, it's doubtful you'd see your real child again.";]
Instead of cutting the baby, try attacking the baby.
	
To acknowledge Anda:
	If AndaAcknowledgement is false:
		Say "Anda.[paragraph break]Yes.[paragraph break]";
		Now AndaAcknowledgement is true;
	Otherwise:
		Say "You say the name again: [italic type]Anda.[roman type][line break]";
	
Instead of answering the baby that "Anda", acknowledge Anda.

Furniture is scenery in Indoors. Understand "scattered furniture", "pot", "cooking pot", "cooking-pot", "bed", "mat", "sleeping mat" as the furniture. The description of the furniture is "Your cooking-pot, your sleeping mat... nothing of importance right now."

Instead of rocking the baby, try kissing the baby.

Before showing a water blob to the baby, try showing the whole eggshell to the baby instead.

Instead of exiting while the location is Indoors, try going west.
