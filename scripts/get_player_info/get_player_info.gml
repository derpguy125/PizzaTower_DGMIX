// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function get_player_info(){
	if selectedChar == 1 then {
		sprite = spr_playerN_idle
		charName = "THE NOISE"
		palette = spr_noisepalette
	} else {
		sprite = spr_player_idle
		charName = "PEPPINO"
		palette = spr_peppalette
	}
	
	switch global.paletteselect {
		case 0:
			palName = "TEMPLATE"
			if selectedChar == 1 then palDesc = "...There's nothing different?"
			else palDesc = "Do not mention HIM."
			break
		case 1:
			palName = "CLASSIC"
			if selectedChar == 1 then palDesc = "Everyone loves the Gremlin.\nHe is a terrific athlete!"
			else palDesc = "He's about as clean as a sweaty\nmiddle-aged italian cook can get."
			break
		case 2:
			palName = "UNFUNNY"
			if selectedChar == 1 then palDesc = "He mentioned humping his couch."
			else palDesc = "I'm sad that I'm trying."
			break
		case 3:
			palName = "SAGE"
			if selectedChar == 1 then palDesc = "im blue if i were green i would die"
			else palDesc = "Thankfully Snick is nowhere to\nbe found... Or is he?"
			break
		case 4:
			palName = "GREENBACK"
			if selectedChar == 1 then palDesc = "oh no"
			else palDesc = "More green than the Grinch on\nSt. Patrick's Day."
			break
		case 5:
			palName = "BLOODY"
			if selectedChar == 1 then palDesc = "Noisette was on her period today."
			else palDesc = "Jesus christ, what did you do?!"
			break
		case 6:
			palName = "PURPLISH"
			if selectedChar == 1 then palDesc = "Sponsored by Noise TV.\nBringing you bad content since 202X."
			else palDesc = "What do you mean I haven't implemented\nP Ranking yet?"
			break
		case 7:
			palName = "SHITTY"
			if selectedChar == 1 then palDesc = "Uh oh... Stinky! Poop!"
			else palDesc = "DEUUEAUGH"
			break
		case 8:
			palName = "EYESORE"
			if selectedChar == 1 then palDesc = "Gay (derogatory)"
			else palDesc = "Jesus that shade of pink hurts!"
			break
		case 9:
			palName = "MR. STICK"
			if selectedChar == 1 then palDesc = "Or rather... Mr. Orange."
			else palDesc = "Orange you glad I didn't say\nAmong Us?\n\n(shit wait)"
			break
		case 10:
			palName = "GOLDEN"
			if selectedChar == 1 then palDesc = "OK UH YOU THINK IM TOO SHINY FOR YOU\nWELL IM GONNA GET YOU NOW\nAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
			else palDesc = "Shiny!"
			break
		case 11:
			palName = "DARK"
			if selectedChar == 1 then palDesc = "Gee... it's kinda dark..."
			else palDesc = "Can't see shit, captain."
			break
		case 12:
			palName = "GOLDEN GOD"
			if selectedChar == 1 then palDesc = "dave and bambi reference goes here"
			else palDesc = "The one that will destroy the Expunged."
			break
		case 13:
			palName = "GHOST"
			if selectedChar == 1 then palDesc = "Spooky..."
			else palDesc = "It looks like you saw a... never mind."
			break
		case 14:
			palName = "GRINCH"
			if selectedChar == 1 then palDesc = "He chose wisely."
			else palDesc = "And that's the tale of the Christmas Cretin."
			break
		case 15:
			palName = "MARIO"
			if selectedChar == 1 then palDesc = "SO RATROS"
			else palDesc = "Just like them Atari Nintendo's I\nused to play in the 80s."
			break
		case 16:
			palName = "LUIGI"
			if selectedChar == 1 then palDesc = "I JUST BOUGHT MORE LAND IN THE METAVERSE"
			else palDesc = "The lesser brother."
			break
		case 17:
			palName = "FUNNY BLUE MAN"
			if selectedChar == 1 then palDesc = "2021 was not a good time for being me."
			else palDesc = "'Hey, wait, I didn't allow you to dress as me!'"
			break
		case 18:
			palName = "REDMOND"
			if selectedChar == 1 then palDesc = "Angry all the time."
			else palDesc = "This feels lazy."
			break
		case 19:
			palName = "THE GIRL"
			if selectedChar == 1 then palDesc = "i cant believe the noise says trans rights"
			else palDesc = "This definitely feels lazy."
			break
		case 20:
			palName = "DEMOLI"
			if selectedChar == 1 then palDesc = "THE CONSTANT."
			else palDesc = "What if it was purple?!"
			break
	}
}