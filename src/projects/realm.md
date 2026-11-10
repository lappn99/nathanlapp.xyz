---
title: Realm Game Engine
description: "A custom game engine in D with OpenGL: shader generation pipeline, compile-time entity component system, shadows, materials, virtual file system and in-house UI."
image: Media/realm_landscape.png
---

# Realm Game Engine

:::: project-header

```{=html}
<div class="hero"><img src="Media/realm_landscape.png" alt="A terrain scene rendered in the Realm engine"></div>
```

::: project-info
Status
:   Development ceased

Language
:   D, with OpenGL

Source
:   [github.com/Realm-Engine/realm](https://github.com/Realm-Engine/realm)
:::

::::

Originally starting as a tool for experimenting with terrain generation, `realm` developed into probably my best attempt (so far) at a fully fledged game engine.

### Features

* Shader generation pipeline, allowing streamlined creation of custom shaders
* Model loading (.obj)
* Shadows
* Entity Component System (ECS)
    * This system was built in a primarily static manner: most of the work is done at compile time by leveraging D's very strong [templating](https://tour.dlang.org/tour/en/basics/templates) and compile-time features
* Materials
* Virtual file system
* In-house UI rendering and creation

![Video demo](Media/realm_demo.gif)

![Early terrain generation](Media/realm_landscape.png)
