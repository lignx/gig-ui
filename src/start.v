// start.v
// This is the starting point for the app.
// It contains the `main` function.

module main

import m_window
import m_graphics
import m_ui
import m_input





fn main() {

	window := m_window.open()

	//m_graphics_font = raylib.load_font("resr/font/Hack-Regular.ttf")
	m_graphics.load_font()


	m_ui.Ui.new(window)

	// main loop
	for !m_window.closing() {
		m_ui.draw()

		m_input.handle_input()
	}

	m_window.close()
}
