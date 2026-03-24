
module m_raylib

import raylib



// Input functions

pub fn get_key_pressed() int {
	return raylib.get_key_pressed()
}

pub fn get_char_pressed() int {
	return raylib.get_char_pressed()
}
