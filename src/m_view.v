

module m_view


import m_raylib



struct View {
mut:
    target     m_raylib.RenderTexture2D
    rect       m_raylib.Rectangle
    is_active  bool
    // z_index for layering
}

fn (mut v View) begin_draw() {
    
	// Abstract raylib code @TODO
	m_raylib.begin_texture_mode(v.target)
    
	// Clear background for this specific view
	// This is an example operation. Should be in the drawing code.
	// Not here.
    m_raylib.clear_background(m_raylib.blank) 
}

fn (mut v View) end_draw() {
    m_raylib.end_texture_mode()
}

fn (v View) render_to_screen() {
    // Draw the texture to the main window
    // Note: Raylib textures are Y-flipped, so we'd flip them back here
    source := m_raylib.Rectangle{0, 0, v.target.texture.width, -v.target.texture.height}
    m_raylib.draw_texture_rec(v.target.texture, source, v.rect.x, v.rect.y, m_raylib.white)
}