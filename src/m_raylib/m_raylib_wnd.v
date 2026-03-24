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







// View / Texture functions

pub type RenderTexture2D = raylib.RenderTexture2D
pub type Rectangle = raylib.Rectangle
pub type Texture2D = raylib.Texture2D
pub type Color = raylib.Color

pub const blank = raylib.blank
pub const white = raylib.white

pub fn begin_texture_mode(target RenderTexture2D) {
	raylib.begin_texture_mode(target)
}

pub fn end_texture_mode() {
	raylib.end_texture_mode()
}

pub fn clear_background(clr Color) {
	raylib.clear_background(clr)
}

pub fn draw_texture_rec(texture Texture2D, source Rectangle, x f32, y f32, clr Color) {
	raylib.draw_texture_rec(texture, source, raylib.Vector2{x, y}, clr)
}
