# gig-ui spec 1

Describes the current library implementation.



## Status

So far it's implemented as an executable app.
Later, the app code will be moved into a "test" module.
And the package will be a library.


## Operation

These state objects, will be added soon:

There is a single "Views" object. Describing the user-defined views.

Each UI View, has an state object.
This State object, has an "update" boolean property.
Indicating wheter the UI needs to be redrawn.




## Structure

Module names start with `m_` .

Graphic APIs are built on top of Raylib.
Later on, the plan is to move it to Webgpu.



### Entry point : `start.v`.
Main function. App loop (Just window loop so far).


### m_window:
Manages the window. Creation, destruction, events, etc.
Later, support for multiple windows will be included.


### m_view:
Handles "Views". Window areas to render into.
All graphics operations, must go into a View.


### m_graphics
Graphics API.
So far only draws boxes and text.
Will contain the "Views" API. For rendering sections.


### m_ui:
UI API. 
Will contain widgets, panels, scrollbars, etc.

So far, nothing has been implemented.
Just an empty frame.
