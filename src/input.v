// handles user input

module m_input

import raylib
import encoding.utf8
import m_ui



pub fn handle_input() {

	// TODO move raylib.. to window module
	key_pressed := raylib.get_key_pressed()
	if key_pressed > 0 {
		handle_keys(key_pressed)
	}   
}


fn handle_keys(key int) {

	// get character input
	unicode := raylib.get_char_pressed()
	if unicode > 0 {
		character_input(u8(unicode))
	}


	// The codes are custom raylib codes, defined in raylib.h
	match key {
		265 { handle_arrows(key) }
		263 { handle_arrows(key) }
		262 { handle_arrows(key) }
		264 { handle_arrows(key) }

		// Alphanumeric keys
		//39 ... 96 { character_input(key) }

		// Keypad keys
		//320 ... 336 { character_input(key) }
		else {}
	}
		
}


// Handles arrow keys @TODO
fn handle_arrows(key int) {

}


// Handles character data input
// c is the unicode for the character
pub fn character_input(c u8) {

	str := c.ascii_str()
	char_rune := str.runes()[0]

	// now pass the rune to the text_panel
	//ui.tex_panel.enter_char(char_rune)

}

