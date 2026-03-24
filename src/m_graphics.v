

module m_graphics

import raylib

// figure out later, to add multiple fonts, sizes and styles
struct State {
	mut:
		font raylib.Font
}


pub const state = &State{}


pub fn load_font() {
	&State(state).font = raylib.load_font("resr/font/Hack-Regular.ttf")
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
	raylib.draw_rectangle(
		pos.x, pos.y,
		pos.w, pos.h,
		raylib.Color{clr.r, clr.g, clr.b, clr.a}
	)
}


pub fn draw_text(tex string, pos Position, size int, clr Color, spc f32) {
	// raylib.draw_text(
	// 	tex,
	// 	pos.x, pos.y, size,
	// 	raylib.Color{clr.r, clr.g, clr.b, clr.a}
	// )
	
	raylib.draw_text_ex(
		state.font,
		tex,
		raylib.Vector2{ pos.x, pos.y },
		size,
		spc, //float spacing,
		raylib.Color{clr.r, clr.g, clr.b, clr.a}
	)
}


pub fn begin_drawing() {
	raylib.begin_drawing()
}


pub fn end_drawing() {
	raylib.end_drawing()
}


// clears whole window
// background. With window background color.
pub fn clear_background() {

}


pub fn measure_text(text string, font_size f32, spacing f32) int {
	
	f_width := raylib.measure_text_ex(state.font, text, font_size, spacing).x
	i_width := int(f_width)
	println("width: ${i_width}")
	return i_width

	//

	// return raylib.measure_text(text, font_size)

}