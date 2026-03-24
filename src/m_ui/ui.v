module m_ui

import m_window

import m_graphics



pub struct Ui {

}



pub fn Ui.new(wnd m_window.Window) {

	ui := Ui{}



}



// draws all ui elements to the window
pub fn draw() {
	m_graphics.begin_drawing()

	
	//raylib.draw_rectangle(pos.x, pos.y, pos.w, pos.h, raylib.blue)
	m_graphics.end_drawing()
}





