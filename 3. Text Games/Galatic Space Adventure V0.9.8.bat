@echo off
setlocal  enabledelayedexpansion
set /a attack=1
cls
echo Greetings space traveler before you begin your adventure we are going to need
echo a couple of things from you. 
echo.
echo First off what is your name?
set /p name= :
echo.
echo You have chosen the name: %name% 
echo.
echo %name%, You are about to embark on an epic journey throughout the cosmos.
echo Your journey will have many dangers. Are you up to the task?
set /p begintask= [y/n]:
if "%begintask%" == "n" (
	echo 		Fine, I didn't want to play anyway...
	pause
	goto :end
)
cls
echo Your journey begins just like any other. It is a nice sunny day and you are 
echo laying on the beach when suddenly a spaceship rapidly decends from orbit
echo to your position 
echo 				What do you do?
echo a)run away
echo b)wait and see what happens
echo c)Try and fight the spaceship after all you can't have aliens on your planet

set /p stepone= :

if "a" == "%stepone%" (
echo You run away like a little girl as the alien spaceship approaches you luckily 
echo you are able to outrun them. You manage to live the rest of your life in a
echo nice little home and raise a family however you will never know what could
echo have been 
goto end
)else if "c" == "%stepone%" (
echo You quickly gather anything around you that can be used as a weapon 
echo in an attempt to try and save your life. When the alien spaceship is 
echo in range you start throwing rocks at it, however, the aliens don't 
echo seem to like it and vaporize you instantly... 
echo They are aliens after all what did you expect to happen
goto end
)

cls

echo You stand there is awe of the giant object coming down towards you. The
echo spaceship quickly lands right in front of you and a ramp extends from the
echo bottom of it. A bright light shines in your face as you see two silhouettes 
echo appear in front of you. You are shocked to see that aliens actually exist let
echo alone one is standing right in front of you. 
echo.
echo before you can think, one of the aliens walks toward you.
echo.
echo "%name% THE ELDER CLAM CLAIMS THAT YOU ARE THE CHOSEN ONE THAT WILL SAVE OUR RACE
echo FROM ANNIHILATION IS THIS TRUE?"
echo.
echo a)"No, I'm sorry you must have the wrong person" 
echo b)"I'm not sure" 
echo c)"Yes of course I am. It's about time you two show up. Do you know how long
echo I've been waiting here?" 

set /p steptwo= :

if "%steptwo%"=="a" (
echo The aliens look at each other for a few seconds and the say, "NO
echo THE ELDER DOES NOT MAKE MISTAKES YOU ARE THE CHOSEN ONE NOW COME 
echo WITH US WE DON'T HAVE MUCH TIME" 
echo you figure since you've come this far that you better go with them 
echo or atleast hear them out on what they have to say
) else if "%steptwo%"=="b" (
echo the aliens look at each other desperatly and then back to you "PLEASE WE
echo ARE SURE OF IT. NOW QUICKLY WE DON'T HAVE MUCH TIME TO WASTE" 
echo seeing the desperation in their eyes you board the ship to try and help 
echo them or atleast hear them out
) else if "%steptwo%"=="c" (
echo the aliens look at each other with confusion and then motion to you to 
echo get on their ship, but you can tell that you have made a bad first 
echo impression on them. No matter how they think of you, you still intend
echo to hear them out 
) 

pause
cls

echo The spaceship is smaller than you would had thought from the outside you
echo assume that most of it is full of space stuff, but it doesn't help that 
echo the alien species is noticably smaller than you. The spaceship takes off once
echo you've taken a seat to who knows where. You try speaking to the aliens, but they 
echo don't even acknowledge your presence. Overall the flight is oddly quiet
echo.
echo Eventually you see several large spaceships outside of your window.
echo You gaze in amazment as you have never seen anything like this before.
echo You notice the ship your in flying to one specific ship that looks like
echo nothing you have seen before and you quickly assume that it must be the captial
echo ship of the fleet
echo. 
echo once your ship lands inside the capital ship the aliens grab you by the arms and
echo start dragging you 
echo.
echo a)"hey where are you taking me?"
echo b)"Let go of me now!"
echo c)don't say anything and just follow them 

set /p stepthree= :

if "%stepthree%"=="a" (
echo the aliens just ignore you and continue dragging you to an unknown location
) else if "%stepthree%"=="b" (
echo The aliens show no sign of reaction to your struggle and continue dragging you
echo to an unknown location 
) else if "%stepthree%"=="c" (
echo although the aliens do not say anything to you, you can tell that they appreciate 
echo the fact that you are not struggling. 
)

cls
echo You are eventally taken to a large open room where you can make out a giant 
echo object at the center. This must be the elder those aliens were talking 
echo about. Suddenly the elder starts to move as to look right at you. 
echo "%name%, YOUR ARRIVAL HAS BEEN FORTOLD BY THE GREAT PROPHECY. YOU ARE 
echo THE CHOSEN ONE." Before you can say anything the elder cuts you off.  
echo "YOU ARE TO BE GIVEN A CHOICE: IF YOU BELIEVE YOU ARE NOT THE CHOSEN 
echo ONE THEN WE WILL LET YOU GO. WE HAVE SEEN YOUR CULTURE AND ARE GIVING YOU 
echo CHOICE IN A WAY THAT YOU WILL UNDERSTAND.
echo you are handed two pills; one of them is red and the other is blue. You 
echo know the blue pill will send you back and the red will continue your journey. 
echo 				Which do you choose?
echo a) red pill
echo b) blue pill
echo c) both

set /p stepfour= :
cls

if "%stepfour%" == "a" (
echo You look at the red pill and swollow it whole. Suddenly u start to feel
echo a great power brewing inside of you. As seconds pass the feeling gets stronger
echo and stronger until suddenly........
echo. 
echo You fart
echo.
echo The elder clam looks at you with disgust before continuing with what he has to
echo say
) else if "%stepfour%" == "b" (
echo Your vision goes black instantly after ingesting the blue pill. You 
echo suddenly wake up in a cold sweat. It must've all been a crazy dream 
echo you think to yourself before going back to bed.
goto end
) else (
echo Apperently you are stupid enough to swollow both pills at the same time. 
echo The clam looks at you in amazment at what you have just done. You stand 
echo still for a second until foam starts shooting out of your mouth violently. 
echo You drop to the floor in severe pain. You start to see a light. "Grandma is 
echo that you?" you say loud enough to cause everyone in the room to start 
echo laughing at you. Just before you close your eyes for the final time
echo you hear "BRING OUT THE NEXT CHAMPION. THIS ONE ISN'T WORTHY"
goto end
)
pause
cls
echo "GOOD, NOW THAT YOU HAVE CHOSEN TO GO ON THIS JOURNEY I WILL TELL YOU
echo WHAT IT IS ALL ABOUT. SINCE THE BEGINNING OF THE UNIVERSE THERE HAS 
echo BEEN A CREATURE CALLED THE DESTORYER. UNTIL NOW HE HAS BEEN DORMANT
echo BUT SOMEONE HAS AWAKEN HIM AND NOW HE THREATENS ALL LIFE IN THE UNIVERSE
echo YOU ARE TO TAKE OUR BEST SOLDIER WITH YOU AND KILL THIS CREATURE ONCE
echo AND FOR ALL"
echo.
echo You notice one of the aliens step out of the darkness and walk over to 
echo you. She greets herself as kilosofagustus the IV but says that you can 
echo call her kat for short. The elder clam nods and you turn around to leave.
echo as you are leaving the elder clam says, "OH AND ONE MORE THING WE HAVE
echo GIVEN YOU ONE OF OUR WEAPONS TO HELP WITH YOUR QUEST AND A SHIP TO HELP
echo YOU GET AROUND." You nod to the clam and continue on your journey.
echo.
echo                     +1 attack
set /a attack= 1
echo current attack lvl: %attack%
pause
cls

echo on your way to the hanger kat stops and says, "I know this is alot for you
echo to take in right now, but you may ask me any questions you have so feel free
echo to ask them
echo.
:question1
echo you ponder what question to ask:
echo a) why is the elder a clam?
echo b) how are we supposed to defeat the destroyer. He sounds really bad
echo c) what is the destroyer?
echo d) what's next?
echo e) continue with your journey

set /p stepfive= : 

if "%stepfive%" == "a" (
echo "No one knows why the elder looks the way he looks the way he does, but some
echo say that he was there at the begining of the universe and that he is 
echo the destroyers brother. You know like how everyone has an evil twin.
pause
cls
goto question1
) else if "%stepfive%" == "b" (
echo Kat looks a little taken back by the question and takes a moment to think.
echo "I have no idea. Maybe along our journey we will find the answer."
echo While this answer doesn't help in the slightest, it does help to know that
echo atleast Kat is positive about the whole thing.
pause
cls
goto question1
) else if "%stepfive%" == "c" (
echo Kat sighs and then says, "No one knows what the destroyer looks like. Some 
echo believe that he looks like the elder just darker while others think that he
echo takes the form of your worst nightmare. Either way we will find out once we 
echo find him."
pause
cls
goto question1
) else if "%stepfive%" == "d" (
echo "The next step of our journey is to gather as much resources and intel as 
echo we can before we go and fight the monster. If we attack it now it will 
echo surely be a quick end for both of us and I don't know about you, but I
echo don't want to die on this quest.
pause 
cls
goto question1
) else (
echo you nod indicating that you have no further questions for her and you 
echo both walk to your new spaceship
pause
cls
)

echo As you enter the hanger you are taken back at the sight of your new spaceship.
echo "This is the coolest thing EVER, Captian Kirk has nothing on me!"
echo Kat looks at you in total confusion and asks, "Who is this captian Kirk? I have
echo not heard of him before. Is he part of the Sector nine fleet?"
echo you respond, "Don't worry about it. He is from one of my peoples shows"
echo.
echo clearly Kat is unimpressed and continues walking to the ship. She takes you to 
echo the bridge where you sit down at the captains chair. Kat walks over to you and 
echo hads you a map of the universe  that has several places of note. She explains 
echo that each of these nodes represents a place you should visit on your journey. 
echo She also tells you that scouting parties have reported the postion of the 
echo destroyer and whenever you are ready you may try and take on the creature, 
echo but watch out you will die if you are not prepared for an intense fight. 
echo.
echo You look at the map
pause
cls


set arcadiacomplete=b
set edencomplete=b
set hermescomplete=b
set contactcomplete=b

:map
cls
echo.
echo                            Where Would you like to go?
echo  ____________________________________________________________________________
echo ^|                                                                            ^| 
echo ^|    a) Arcadia                                e) destroyers position        ^|
echo ^|                                                                            ^|
echo ^|                                                                            ^|
echo ^|                     d) UNKNOWN CONTACT                                     ^|
echo ^|                                            b) Eden Nebula                  ^|
echo ^|                                                                            ^|
echo ^|        c) Hermes Spaceport                                                 ^|
echo ^|                                                                            ^|
echo ^|                                                                            ^|
echo  \__________________________________________________________________________/ 
goto warp

:map2
cls
echo.
echo                            Where Would you like to go?
echo  ____________________________________________________________________________
echo ^|                                                                            ^| 
echo ^|    a) Arcadia                                e) destroyers position        ^|
echo ^|                                                                            ^|
echo ^|                                                                            ^|
echo ^|                     d) Space Whales                                        ^|
echo ^|                                            b) Eden Nebula                  ^|
echo ^|                                                                            ^|
echo ^|        c) Hermes Spaceport                                                 ^|
echo ^|                                                                            ^|
echo ^|                                                                            ^|
echo  \__________________________________________________________________________/ 

:warp
set /p warp= :

if "%warp%" == "a" (
	goto arcadia
) else if "%warp%" == "b" (
	goto eden
) else if "%warp%" == "c" (
	goto hermes
) else if "%warp%" == "d" (
	goto contact
) else if "%warp%" == "e" (
	goto endgame
	)
) else (
	echo Error! Invalid location please select a location on the map
	pause
	goto map
)

:: -----------------------------------------------------------------------
::                       Arcadia
:: -----------------------------------------------------------------------

:arcadia
echo You tell Kat to set course for the moon Arcadia orbiting the gas giant
echo neptulon.
pause
cls

if "%arcadiacomplete%" == "a" (
	echo You've already been here so there is no reason to stay any longer
	echo However, the moon still looks beautiful from here.
	echo 			returning to map
	pause
	if "!contactcomplete!" == "a" (
	goto map2
	) else (
	goto map
	)
)

echo the warp is almost instantaneous and within a second you find your ship orbiting
echo the moon. Even from orbit it looks amazing. You can see the forests 
echo covering the surface and the purple oceans make it stand out. If it 
echo wasn't for the purple water the moon would look extremly similiar to earth. 
echo Kat quickly shouts, "We have a reading coming from the other side of the planet 
echo should we investigate?

echo a) yes
echo b) no
echo c) You should make the call

set /p arcadia1= :
if "%arcadia1%" == "b" (
echo you tell her no in fear of the unknown and not wanting to risk everything 
echo and decide to take one last look at the planet. As you do you can see
echo an object fly away at insainely fast speed into the unknown. You wonder if that 
echo was the contact that you where picking up.
set arcadiacomplete=a
echo.
echo                        returning to map
pause
if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)

) else if "%arcadia1%" == "c" (
echo Kat nods as if to thank you for showing some respect to her and she quickly 
echo jumps on the controls to fly towards the beacon
echo.
echo                     Kat appreciates that
pause
set morals=morals+1
) else (
echo "Yes" you tell Kat and she stears the ship to the otherside of the planet
pause
)
cls

echo As the ship approaches the source of the anomaly you begin to see a large 
echo structure and as the ship gets closer and closer it begins to look like a 
echo temple of some sort.Kat looks on in aw and says, "i've never seen anything 
echo like that before" You can sense the excitement in her voice. The temple 
echo looks to be thousands of years old and can only be best related to is a 
echo mayan temple back on earth. There seems to be a bright light coming from 
echo the temple in the middle and seems the best place to search. 
echo. 
echo Kat quickly brings the ship down and lands in a clearing in the middle of
echo the ruins.
pause
cls
echo As you exit the spaceship you can see that this must have been a city 
echo thousands of years ago, but now it is completely empty and has been 
echo for quite some time. Your eyes quickly fix on the big temple where you 
echo saw the light from the sky and you and kat begin walking to it. 
echo Once at the base of the temple you notice how much bigger it is 
echo waaaaayyyyyyyy bigger than you. and you began the long process of climing 
echo to the top
echo. 
pause
cls
echo It took you about 40 to climb to the top while it only took Kat 10 minutes
echo and you best believe that she was making fun of you all the way up. Blast
echo her species and their amazing fitness levels. However, Once you finally make
echo your way up to the top you look around and see a small room that is exposed to 
echo the elements. At the center of the room you see a floating orb that is glitching
echo "come closer" you hear from the center of the room. 
echo "What?"
pause
cls
echo "Yes I'm talking to you. Your arival was fortold by the great prophacy of our 
echo people. Kat looks in confusion and asks, "What people are you talking about 
echo These structures look nothing like I've ever seen before"
echo "Our people have been known by many names, but it matters no longer as they 
echo have gone extinct long, long ago during a massive civil war and all that 
echo remains is me a lonley construct who is only here to give the true champion 
echo our greatest technology to combat the evil that waits in the universe. 
pause
cls
echo Before you get to say anything the orb at the center of the room starts 
echo floating out of the temple and towards your ship. You start to run after 
echo it hoping that it isn't going to blow up your ship. It is after all a 
echo badass ship. However, instead of blowing up the ship it goes inside to 
echo the cargo hold and then materializes into power armor that can be used 
echo to fight the destroyer. All of a sudden the ground begins to shake and you 
echo run out of your ship to see the ruins start to fly into the sky and within
echo seconds it goes out of view. 
pause
cls
echo You go back to your ship wondering what just happened, but you are happy to 
echo have the power armor to aid you in your upcoming fight. You return to your
echo map to see where your next adventure is.
echo 			+1 attack 
set /a attack= %attack% + 1
echo Current attack lvl: %attack%
pause

set arcadiacomplete=a
if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)


:: --------------------------------------------------------------------------
:: 				EDEN
:: --------------------------------------------------------------------------

:eden
echo You tell Kat to set course for the Eden Nebula 
pause
cls

if "%edencomplete%" == "a" (
echo "Look no offense captian, I know how beautiful it is, but I am not
echo willing to risk another chance at being attacked by priates"
echo.
echo You shake your head in agreement and go back to the map to 
echo plot the next course.
pause
cls

	if "!contactcomplete!" == "a" (
	goto map2
	) else (
	goto map
	)
)

echo The Eden Nebula is a place of great beauty and is breath taking. Just 
echo knowing that new stars are being made here blows your mind. This place
echo is peaceful and you get lost in the nebula's red and blue hues. It feels
echo like you where there for an eternity. Kat doesn't seemed as taken back as 
echo you, but she is still enjoying the view. 
echo.
echo Seconds later the entire ship erupts into alarms.
echo "What is going on?!?" You yell
echo Kat responds, "I don't know it's never done this befo..."
pause
cls
echo A green figure appears on screen and all the alarms fall silent. You
echo turn to look at kat, but she is just confused as you are. 
echo.
echo "We are the zyn, We are mighty space pirates and you seem to be in our
echo territory. Hand over your cargo now or be destroyed
echo.
echo a) "Never! we will fight you til the end"
echo b) "kat fire up the engines and prepare to run!"
echo c) "fine, take what you want and get out of here"
set /p eden1= :
cls

if "%eden1%" == "a" (
echo "HAHA I was hoping you would say that. Now, Prepare to meet the maker"
) else if "%eden1%" == "b" (
echo "Well it seems you don't value your life enough, but don't worry
echo you will quickly be parted from it."
) else (
echo You lower your sheilds and turn off your weapons as the pirate ship
echo boards your ship. You remain on the bridge as two of the pirates 
echo haul a valuable peice of equipment off your ship.
echo 			-1 attack power
set /a attack= !attack! - 1
echo Current attack lvl: !attack!
)
echo.
echo Suddenly the alarms start blaring again and onscreen you see a
echo countdown and a voice say, "Self destruct enabled. Self-destruct in
echo t-minus 30 seconds."
pause
cls
echo "IT'S A TRAP!" Kat yells, "We've been hacked^!"
echo You cannot help but chuckle a little, but given the situation it is
echo no time for jokes. You find the nearest terminal in an attempt to 
echo override the self destruct. 
echo.
echo The bad news is that you do not know how to hack, but the good news
echo is that you found a way to override the self destruct sequence. The 
echo even worse news is that it requires a password and neither you or Kat
echo know the password. What do you do?
echo.
echo a) Try and guess the password at random
echo b) Type in "execute order 66" After all maybe it will work
echo c) lay down and cry
set /p eden2= :
cls

if "%eden2%" == "a" (
echo You desperatly attempt to guess the password at random. Unlucky for
echo you, you are unable to guess the password and you hear the voice on
echo the ship say, "Self destruct in t-minus 3...2...1..." Sureley this
echo is the end for you and your journey.
pause
cls
) else if "%eden2%" == "b" (
echo You figure fuck it might as well try it and type in the words
echo execute order 66. If it worked in Star Wars it will work here right?
echo Amazingly the alarm stops and you breath a sigh of releaf until you
echo hear "Order 66 active, Self-destruct sequence speeding up. 
echo self-destruct in t-minus 3...2...1..."
pause 
cls
) else ( 
echo you realise that this is the end and there is no getting out of the
echo situation and decide lay on the ground and curl up into a ball and
echo just start to cry. You had so much to live for. How can it all end 
echo like this?
echo "Self-destruct in t-minus 3...2...1..."
pause
cls
)
echo You close your eyes knowing that this will be the last thing you
echo ever see and hope that it will be quick and painless...
echo.
pause
cls
echo You open your eyes again to see the terminal just the way you left it.
echo So this must be what death is like. However, you look over to see Kat
echo at the terminal. Apperently she was able to override the self-destruct
echo sequence at the last second saving both of you and the ship. 
echo She quickly kicks on the engines and before you know it you are out 
echo of that crazy situation and on your way to continuing your 
echo adventure.
echo "Thanks" 
echo "Yeah, anytime captian, after all it is the least I can do for you
echo since you got me away from my boring life on my planet" Kat responds.
echo. 
echo Once things settle down you go over to the map to chart a course
echo for the next location
pause
cls
set edencomplete=a

if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)

:: --------------------------------------------------------------------------
::				HERMES 
:: --------------------------------------------------------------------------

:hermes
echo You tell Kat to go to the Hermes Space Station in the Proton sector
pause
cls
if "%hermescomplete%" == "a" (
echo You have already visited the station and there is nothing left
echo of note aboard the station. You head back to the map to plot 
echo your next course
pause
if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)
)

echo You ask Kat what she knows about the Hermes Space Station and she 
echo tells you that it is one of the oldest space stations in the galaxy 
echo and was apprently build by an old space fairing civilization 
echo centuries ago and since then it has been restored multiple times
echo by different spieces, but now the scum of the galaxy lives there. 
echo.
echo She tells you that you should leave all valuables on the ship
echo because you risk it being stolen
echo.
echo You thank her for the insight and get ready to enter the station.
pause
cls
echo You can instantly tell what Kat meant by scum of the galaxy 
echo because the place looks run down and there is garbage everywhere
echo.
echo You make your way to the market to see if there is anything
echo that might aid you in the upcoming fight with the destroyer.
echo The place is packet with all different types of aliens that you
echo could ever have imagined existed. The whole place has an ecosystem
echo of its own and it is clear you do not understand it. Everytime
echo you stop moving to look at something there is an alien yelling
echo at you to move
pause
cls

echo eventually you make your way to a mostly empty alley near the edge
echo of the station. A dark figure emerges from the darkness and approches
echo you. Before you can react the figure speaks
echo.
echo "I hear you're trying to take down the destroyer. Maybe I can help you
echo with that. Would you be interested in buying some Gene modification 
echo injections?
pause
cls
echo Kat asks, "Isn't that stuff illegal?"
echo "Well, technically yes, but if your going to take on the destoryer
echo you are going to need every advantage you can get and this stuff
echo is going to help you"
echo Kat looks at you at says, "Well captian, it's your call what do 
echo you think we should do?"
echo.
echo a) "It's illegal, enough said we should just walk away"
echo b) "Do you have anything more legal that could help us?
echo c) "We'll take it"
set /p hermes1= :
cls

if "%hermes1%" == "a" (
echo You think that it's not worth the risk of getting arrested or 
echo even worse so you leave and head back to your ship as there
echo is nothing else that can help you on your journey
echo.
echo After a couple of minutes you can hear the sound of sirens
echo behind you followed by a couple of gunshots.
echo "Captian that sounded like it came from that alley we were
echo just in."
echo you nod and continue walking thanking your lucky stars that
echo you didn't say around. You make it back to your ship empty
echo handed, but atleast your safe.
pause
cls
) else if "%hermes1%" == "b" (
echo The dealer thinks for a moment and then pulls out a couple of
echo grenades.
echo "They are military grade grenades and will take down the toughest
echo of foes with a simple toss."
echo You look at Kat and then give the dealer his money and leave without
echo Incident. Kat looks at you and says, "You handled yourself well
echo back there. You might be the chosen one after all."
echo.
echo You head back to your ship with a little more fire power, but
echo you wonder if you should have taken the gene modifications
echo instead.
echo				+1 attack
set /a attack= %attack% + 1
echo Current attack lvl: !attack!
pause
cls
) else (
echo You take out money to give to the dealer and in exchange he gives
echo the viles of gene modification and he explains how to use them
echo.
echo Just as you are about to leave you are suddenly surrounded by 
echo station security. One of the officers shouts, "Lay down your
echo weapons and come with us peacefully and you will not be
echo harmed" 
echo The dealer behind you suddenly yells, "Fuck that I'm not
echo going back" and he pulls out his gun and fires a couple
echo of round at the officers. 
echo "RUN!" 
pause
cls
echo You and kat begin to run as fast as you can. You look back just
echo in time to see the dealer get lit up with a hail of gunfire
echo and he is killed instantly. You cannot think straight
echo knowing that, that could have been you.
echo.
echo kat pulls you into a side alley and tell you to keep quiet.
echo You both sit there for what seems like forever until kat
echo finally gives the all clear and you both hurry back to your
echo ship Alive and with a huge boost to your strength, but you
echo know that you should not return to the station.
echo			+2 attack
set /a attack= !attack! + 2
echo Current attack lvl: !attack!
pause
cls
)

set hermescomplete=a
if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)


:: --------------------------------------------------------------------------
::				CONTACT
:: --------------------------------------------------------------------------

:contact
echo You tell Kat to head to the Unknown contact blinking on your map
pause
cls
if "%contactcomplete%" == "a" (
echo Kat is annoyed that you've already been here, but come on 
echo SPACE WHALES. After the momentary distraction you return to your
echo map
pause
goto map2
)

echo You are instantly warped into an unexplored sector of space to 
echo investigate an unknown conctact on your map. What could go wrong?
echo Luckily for you everything seems to be quiet until moments later
echo Kat's instruments start to light up like crazy. Out of concern you ask 
echo her what's wrong. 
echo "We are picking up a large ammount of contacts heading our way! I'm 
echo going to turn off everything but basic life support to try and hide 
echo from them."
pause
cls
echo Seconds go by and then minutes and all you can hear is the creak of 
echo the bulkheads on the ship. Both of you just sit in silence until Kat 
echo says, "Wait I can see them now"
echo.
echo A) What are they? Rival empire? Rouge Faction? Pirates?
echo B) Can we kill them?
echo C) Are we going to die?
set /p Contact1= :
cls

if "%Contact1%" == "a" (
echo "No no no, nothing of the sort. We are going to be just fine. Actually
echo it's a type of species that floats through space. They are peaceful.
echo They sort of resemble a sort of whale on your homeworld."
) else if "%Contact1%" == "b" (
echo "Well technically, yes we could, but luckily we wont need to in this 
echo situation. The contacts are actually just a group of spacefaring 
echo creatures that resemble the whales on your planet."
) else (
echo "No, we are not going to die. Lucily the contacts we where picking up 
echo is just a group of space fairing creatures that look remarkably similiar
echo to whales from your home planet.
)
echo.
echo "So you mean to tell me that we are surrounded by SPACE WHALES?!?!"
echo You jump up from your captians chair and run to the neariest 
echo window that you can find. You gaze in awe as the creatures fly 
echo over you like the scene from treasure planet. You can't help 
echo but jump for joy like a little kid on christmas morning
echo Kat can't but but laugh at you. You can clearly see that this isn't
echo the first time that she has seen this species before, but you 
echo don't care how you look. After all you are looking at 
echo SPACE WHALES!!!!!!!!!
pause
cls
echo Once you have finally calmed down you give the order to warp out of
echo the system and continue your adventure. However, You do leave feeling
echo a little bit better about the battle that is to come
echo 				+1 attack
set /a attack= %attack% + 1
echo %attack%

pause
set contactcomplete=a
goto map2

:: --------------------------------------------------------------------------
::				ENDGAME
:: --------------------------------------------------------------------------

:endgame
echo Are you sure you want to warp here? Once you enter you can never go back!
set /p eg= [y/n]:

if "%eg%" == "n" (
echo Returning to map
pause
if "!contactcomplete!" == "a" (
goto map2
) else (
goto map
)
)
echo Kat takes a deep breath and sets course for the last known position of
echo the destroyer
pause
cls

echo You Instantly warp in. You feel the ship start to vibrate. In turns out
echo that you jumped into a astoroid field! Kat quickley takes over the
echo controls and skillfully navigates the field and brings the ship to saftey
echo.
echo "What the" Kat says, "This shouldn't be an astaroid field this should be...
echo OH NO"
pause
cls
echo "According to my records this should be the planet Galagus home to over
echo 10 billion of the Jolton species. It must have been the latest 
echo victim of the destroyer. We should be careful it could still be here."
echo.
echo "Wait, I'm picking up a trace of atmosphere on one of the larger
echo rocks just over there. I'm going to bring the ship down to
echo investigate.
pause
cls
echo Kat lands the ship in a meadow on one of the destroyed segments
echo on the planet. Both of you exit the ship with your spacesuits
echo on. 
echo.
echo Everything is lifeless. Without a proper atmosphere everything
echo must have died almost instantly. Just then some of the tall grass 
echo in front of you moves a little. Both you and kat raise your
echo weapons in fear of what might still be alive out here.
pause
cls
echo You see the creature move towards you and when it emerges you
echo breath a heavy sigh of relief. It looks like a bunny. I didn't
echo know their where space bunnies. You lower your weapon and
echo go to pet the bunny.
echo.
echo "I wouldn't suggest that captain. You don't know anything about
echo it"
echo "Relax kat What possible harm could one little space bunny do?
pause
cls
echo You bend down and begin to pet the bunny. All of a sudden you
echo begin to see the bunnies eyes turn dark red and begin to hear
echo demonish screems coming from the bunny.
echo.
echo Before you can react the bunny has launch you straight into 
echo your ship creating a huge dent in the ship and you fall to
echo the ground in pain.
echo. 
echo you look up to see what once was a cute little bunny transform
echo into The Scariest thing that you have ever seen.
echo "It's the destroyer!" Kat yells as loud as she can. 
pause
cls
echo kat rushes over to you and helps you up. and you stand side by
echo side and get ready for the fight of your lives. Hopefully you have
echo prepared enough for the fight...
pause
cls
if %attack% LEQ 1 (
echo You are completley unprepared for a fight like this and it shows
echo The Destroyer kills Kat quickly and then turns to attack you
echo You can do little more than delay the creature from killing
echo you, but in the end you are no match for the powerful creature. You
echo lay dead in the field along side Kat and the Destroyer stands the
echo winner and will continue on to destroy the rest of the universe.
echo.
echo If only you had prepared for the fight might the Destroyer be dead
echo and you be the one walking away.
echo.
echo				FAILURE
echo.
echo Thanks to you The universe will be destroyed 
pause
echo.
echo.
echo Great work asshole
) else if %attack% LEQ 4 (
echo Luckily during your journey you have prepared for this fight thought
echo You could have prepared a little more. Nonetheless you feel ready
echo for the fight.
echo.
echo The battle is long and tiring as both you and Kat exchange blows with
echo the Destroyer, however, the Destroyer is able to gain the upper hand 
echo during the battle and picks up Kat
pause
cls
echo 				SNAP
pause
echo.
echo Kat's lifeless body falls to the ground as the Destroyer looks you dead
echo in the eyes. You cannot help but let out a scream as your companion lays
echo dead in front of you. 
echo.
echo You cannot contain your rage as you go in to a frenzy striking the beast
echo anyway you can.
pause
cls
echo You manage to bring the creature down to the ground with a well placed 
echo shot on his knees. You bring out your knifes and jump on top of the beast
echo continuing to stab it's face until it no longer struggles to break free
echo.
echo And even then you continue to stab the creature
echo "That's for Kat" you yell as you get up to look at the aftermath of the
echo battle.
pause
cls
echo You run over to Kat's motionless body and drop to your knees in pain.
echo "I'm so sorry Kat! I wish I could have done better. I should have done
echo better. Because of me you are dead. you where the best companion that
echo any one could have asked for." 
echo. 
echo You find a blanket on the ship to wrap the body in and bring it aboard
echo the ship determined to bring her home where she belongs.
pause
cls
echo You finally make your way back to the elder clam to tell him of the death
echo of the destroyer. At first word of the news the entire fleet erupts
echo into a hail of celebration
echo.
echo "%name%, I KNEW YOU WHERE THE CHOSEN ONE FROM THE MOMENT I SAW YOU. 
echo CONGRATS ON KILLING THE DESTROYER. YOU MAY HAVE ANYTHING THAT YOU DESIRE"
pause
cls
echo You shake your head and inform the clam of your companion and only wish
echo for one thing
echo.
echo That her body be treated with respect and get a proper funeral and that she
echo is honored for her sacrafice and bravery that she displayed during your
echo time together.
echo.
echo The clam agrees to these terms.
pause
cls
echo 				CONGRATS
echo You have successfully Killed the Destroyer and have brought peace to the
echo universe. Because of what you have done today people will no longer have
echo to be afraid of being destroyed. The Clam has created a memorial to 
echo honor your triumphant victory and to honor Kat. You are returned back
echo to the beach that you started this whole thing with. However, you are
echo unable to return to normal life after knowing what else is out there.
echo Luckily you are able to contact the aliens and they come back to get you.
echo After all there is more adventuring to be had...
pause
) else (
echo You feel 100^% prepared for this fight and it shows in battle. The battle
echo rages on for hours and both you and Kat trade blows with the creature.
echo However, at one point the creature is able to gain the upper hand and
echo grabs Kat...
pause
cls
echo Luckily you are able to distract the monster for just long enough for
echo Kat to break free from its grasp and she is able to take the monster
echo to the ground with ease.
echo.
echo You pull out two knifes and equip one to each hand and leap on top of
echo the monster and stab it's face until it is no longer moving and then
echo you stab it some more until you are sure that it will never get up
echo again
pause
cls
echo You head back to the ship where Kat is checking the status of the ship
echo and making repairs as necessary.
echo "It's done, I can't believe it. Ever since I was a little girl I have
echo been afraid of the Destroyer, but here we are standing victorious"
echo You tell Kat that you couldn't have done it without her and just glad
echo to be done with it.
echo.
echo You both go back to the ship and head back to the main fleet to 
echo bring the good news back. 
pause
cls
echo "%name% I KNEW THAT YOU COULD DESTROY THAT CREATURE BEFORE IT ATE
echo THE UNIVERSE. CONGRATS ON YOUR VICTORY." The clam then signals over
echo to two other soldiers who bring out medals for you and Kat. The
echo whole ship erupts into celebration and you cannot help but join
echo in on the fun. 
echo.
echo The clam builds a memorial to celebrate this victory over evil and
echo you can see you and Kat immortalized in gold. It is quite impressive
pause
cls
echo After a couple of days Kat flies you back to the beach where this all
echo started.
echo "If you need anything and I mean anything don't hesitate to call. You
echo are the greatest captian I have ever had and am going to miss you."
echo.
echo You turn to give Kat the biggest hug in the universe and thank her
echo for always being there for you. and you turn to walk down the ramp and
echo go back to society.
pause
cls
echo				CONGRATS
echo Congrats on beating the Destroyer and bringing peace to the galaxy.
echo Becasue of your efforts people will no longer have to fear the darkness
echo As for you returning to society was harder than you thought. Out there
echo you were a hero, but on earth you are a nobody. Eventually you have had
echo enough and contact Kat to come get you. You are both happy to be
echo reunited with your companion and set back out to see where the universe
echo will take you next. After all there is more adventuring to be had.
pause
)

:end
echo 			Your Adventure Is Over
pause
endlocal