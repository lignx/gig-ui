module m_raylib

import raylib



pub type Font = raylib.Font


// Window functions

pub fn init_window(width int, height int, title string) {
	raylib.init_window(width, height, title)
}

pub fn set_config_resizable() {
	raylib.set_config_flags(raylib.ConfigFlags.flag_window_resizable)
}

pub fn set_target_fps(fps int) {
	raylib.set_target_fps(fps)
}

pub fn window_should_close() bool {
	return raylib.window_should_close()
}

pub fn close_window() {
	raylib.close_window()
}





