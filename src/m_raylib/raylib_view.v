
module m_raylib

import raylib



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