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


## Module top-level State

This project uses a special techinque, for storing state.
(In some cases). Module-top-level-state, is not allowed
on Vlang, by default.

This special technique, allows it.
It consist on creating a constant pointer, at the module
top-level. To a struct, that contains the state variables.
To be able to mutate the state variables, we need to
cast it into a normal pointer. this allows the mutation.

Example:
```
// `state` is the module-top-level constant pointer
// It is casted into a plain pointer.
// This cast, enables the mutation.
&State(state).font 
```

This feature could be disallowed, in some future Vlang
compiler update. We hope it is not. If that happen,
we will have to look for another solution.



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
