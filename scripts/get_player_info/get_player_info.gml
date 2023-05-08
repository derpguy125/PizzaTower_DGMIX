// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_player_info(){
	if obj_player.character == "N" then {
		hudSprite = spr_noiseHUD_idle
		character = "THE NOISE"
		currentPal = spr_noisepalette
	} else {
		hudSprite = spr_pepinoHUD
		character = "PEPPINO"
		currentPal = spr_peppalette
	}
	
	switch global.paletteselect {
		case 0:
			palette = "TEMPLATE"
			break
		case 1:
			palette = "CLASSIC"
			break
		case 2:
			palette = "UNFUNNY"
			break
		case 3:
			palette = "SAGE"
			break
		case 4:
			palette = "GREENBACK"
			break
		case 5:
			palette = "BLOODY"
			break
		case 6:
			palette = "PURPLISH"
			break
		case 7:
			palette = "SHITTY"
			break
		case 8:
			palette = "EYESORE"
			break
		case 9:
			palette = "MR. STICK"
			break
		
	}
}

function get_player_info_2(){
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
		
	}
}