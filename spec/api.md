# gig API design

The API uses objects. Items are defined as objects.
A text, square, triangle, ui-components...
The objects are passed to methods, to be drawn.
This allows to use declarative definitions.
Things like to keep graphics stored, as sets of objects.

Operation mode is retained.

`Scene2D` is designed for use with graphics, documents, and UI.
It is (intended) versatile and useful, for all these use cases.

Note that this documents, centers in the graphics API.
Other parts will be dealt later: Window, View, UI, 3D...


# Graphics API: gig.gx
This api will be named gig.gx

Provides 2D graphics capabilities.

The top level object, is the `Scene2D`.
Scenes can be nested. One into another.
A 2D scene, can also be positioned inside a 3D scene (`Scene3D`).
(3D will be implemented later)
To have 2D within 3D.

Each Window View, contains one or more overlapping scenes.
Separate Views can overlap. To allow placing UI over 3d, for example.


## Cascading Styles
Will be integrated into the `Scene2D`.
Each node entry, in the `Scene2D`, can contain multiple objects.
And/or `Style` Objects or `Style_sets`.
Styles will propagate to sub-nodes.

The idea of multiple objects, in a single node is this:
To simplify the nesting, and combine multiple things in a single slot.
For example:
A single node point can have A `Layer`, a `Grid`, and a `Vision`.
For this feature, some other useful use-cases, may come later.
Some nodes may be incompatible together.


## Coordinates
Top-left is 0, 0.
Coordinate units are pixels.
Other Units systems will be supported.
Using methods, to translate to pixel units.
The first implementation, will contain the Grid:

* Grid unit systems
A unit is equal to the width of a monotype character.
Default font, default size.
This allows to create a certain symmetry, between graphics and text. 

* Other units
Additional units will be added later.
Like 0-1 of View, 0-1 of Window...



## Components

### Root Objects
File: Root.v

* View: Drawing area, in the app window.
* Scene: Tree structure of components

A simplification is that all components, must have specific size.
There is no auto resizing components.
Component resizing must be done explicitly by users.
(With provided functions or methods)

All positioning, is relative to top container.
Except for `Root` node.

All objects below, have an `id` propery. A string.
The Style objects, have a separated set of ids.


### Structure Objects
File: structure.v

* Position: sub-nodes are re-positioned.
* Transform: Provides translation, rotation and scale. To sub-nodes.
* Root: Absolute position for sub-nodes, relative to containing `View`.

* Layer: Z-index plane.
  Props: name, z.
* Clip: Limits children to a clipping rectangle.
* Box: A container.
  Sub-nodes are placed relative to its position.
  Properties: position and size.
* BoxH: arranges sub-nodes horizontally.
  Properties: position, size, gap.
* BoxV: arranges sub-nodes vertically.
  Pro: position, size, gap.
* Scroll: scroll bars. Added to Boxes, to enable scrolling content.
  Props: h, v. Booleans. ... ...

### Container Objecst


### Function Objects
* Camera2D: 2D camera.
  Props: name, position, size.
* Projection: renders some Camera2D content.
  Props: position, size, camera. 
* Interactive: set sub-nodes as interative

### Graphic Definition Objects

* Vec2 : vector2.
* Rect: A box area. position, size.

### Graphic Objects
File: graphic.v

* Square: position, size, color.
* Image: src (a string), position and size.

These would be implemented later:
* Polygon: point list, color.
* Path:
* Circle: 
* Ellipse:
* Arc:

### Style Objects
File: style.v

* Color: r, g, b, a. 8 bit ints.
* Font: name, id.
* Style_Text: color, font, size, and bold boolean.
* Style_Shape: fill, stroke.
* Fill: color (Initial implementation includes only solid)
* Stroke: color, width. (Initial implementation includes only solid)
* Style_Set: A group of styles, associated with targets.
  Targets are text-document type identifiers.
  A Map:  target-names(string) -> Text_styles references.
  
### Other


### Document
File: document.v

* H1, H2, H3, H4, H5: Headers.
* Text_Block: paragraph. arranges content as text flow.
* Text: content, position, text style.
* Bold: bold text
* List_Item: 
...

### UI
File: ui.v

* Button:
* 




