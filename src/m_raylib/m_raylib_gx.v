
module m_raylib

import raylib



// Graphic functions

pub fn begin_drawing() {
	raylib.begin_drawing()
}

pub fn end_drawing() {
	raylib.end_drawing()
}

pub fn load_font(file_path string) Font {
	return raylib.load_font(file_path)
}

pub fn draw_rectangle(x int, y int, w int, h int, r u8, g u8, b u8, a u8) {
	raylib.draw_rectangle(x, y, w, h, raylib.Color{r, g, b, a})
}

pub fn draw_text_ex(font Font, text string, x f32, y f32, font_size f32, spacing f32, r u8, g u8, b u8, a u8) {
	raylib.draw_text_ex(font, text, raylib.Vector2{x, y}, font_size, spacing, raylib.Color{r, g, b, a})
}

pub fn measure_text_ex(font Font, text string, font_size f32, spacing f32) (f32, f32) {
	res := raylib.measure_text_ex(font, text, font_size, spacing)
	return res.x, res.y
}