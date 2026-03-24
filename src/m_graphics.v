

module m_graphics

import m_serv_graphics.m_raylib

// figure out later, to add multiple fonts, sizes and styles
struct State {
	mut:
		font m_raylib.Font
}


pub const state = &State{}


pub fn load_font() {
	&State(state).font = m_raylib.load_font("resr/font/Hack-Regular.ttf")
}


pub struct Position {
pub mut:
	x int
    y int
	w int
	h int

}


pub struct Color {
pub mut:
	r u8
	g u8
	b u8
	a u8
}


// draws a square box
// with the given color
pub fn draw_box(pos Position, clr Color) {
	m_raylib.draw_rectangle(
		pos.x, pos.y,
		pos.w, pos.h,
		clr.r, clr.g, clr.b, clr.a
	)
}


pub fn draw_text(tex string, pos Position, size int, clr Color, spc f32) {
	m_raylib.draw_text_ex(
		state.font,
		tex,
		f32(pos.x), f32(pos.y),
		f32(size),
		spc,
		clr.r, clr.g, clr.b, clr.a
	)
}


pub fn begin_drawing() {
	m_raylib.begin_drawing()
}


pub fn end_drawing() {
	m_raylib.end_drawing()
}


// clears whole window
// background. With window background color.
pub fn clear_background() {

}


pub fn measure_text(text string, font_size f32, spacing f32) int {
	
	f_width, _ := m_raylib.measure_text_ex(state.font, text, font_size, spacing)
	i_width := int(f_width)
	println("width: ${i_width}")
	return i_width
}