## Realm Game Engine

[github link](https://github.com/Realm-Engine/realm) 

_Development ceased_

---

Originally starting as a tool for experimenting with terrain generation, `realm` developed into probably my best attempt (so far) at a fully fledged game engine.

### Features:

* Shader generation pipeline, allowing streamlined creation of custom shaders
* Model loading (.obj)
* Shadows
* Entity Component System (ECS)
    * Additionally, this system was done in primarily a static manner, where most of the work was done at compile time by leveraging D's very strong [templating](https://tour.dlang.org/tour/en/basics/templates) and compile time systems
* Materials
* Virtual file system
* In-house UI rendering and creation

---

![Video demo](Media/realm_demo.gif)

---

![Early terrain generation](Media/realm_landscape.png)