

module m_view


import raylib



struct View {
mut:
    target     raylib.RenderTexture2D
    rect       raylib.Rectangle
    is_active  bool
    // z_index for layering
}

fn (mut v View) begin_draw() {
    
	// Abstract raylib code @TODO
	raylib.begin_texture_mode(v.target)
    
	// Clear background for this specific view
	// This is an example operation. Should be in the drawing code.
	// Not here.
    raylib.clear_background(raylib.blank) 
}

fn (mut v View) end_draw() {
    raylib.end_texture_mode()
}

fn (v View) render_to_screen() {
    // Draw the texture to the main window
    // Note: Raylib textures are Y-flipped, so we'd flip them back here
    source := raylib.Rectangle{0, 0, v.target.texture.width, -v.target.texture.height}
    raylib.draw_texture_rec(v.target.texture, source, raylib.Vector2{v.rect.x, v.rect.y}, raylib.white)
}