// Module window
//
// This module abstracts all the window functionality.
// Ideally, making possible switch to different windows
// providers. If that is decided.
//
// This module will also constains all functionality
// to draw to the window.
//

module m_window

import m_raylib
import m_graphics



// Main app window
pub struct Window {

	// size and position
	m_graphics.Position

	// background color
	m_graphics.Color

}


// clears whole window
// background. With window background color.
// TODO: use data from a `Window` instance
pub fn open() Window {
	
	window := Window {
		Position: m_graphics.Position {
			x: 0,
			y: 0,
			w: 800,
			h: 600
		}
		
		// Color: m_graphics.Color {
		// 	r: 255,
		// 	g: 255,
		// 	b: 255,
		// 	a: 255
		// }
	}
			
	m_raylib.set_config_resizable()
	m_raylib.init_window(window.w, window.h, "gig-ui")
	m_raylib.set_target_fps(5)

	return window
}


pub fn closing() bool {
	return m_raylib.window_should_close()
}


pub fn close() {
	m_raylib.close_window()
}




