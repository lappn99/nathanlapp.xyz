---
title: "GLTrace: OpenGL call tracer"
description: "A Rust library that hooks OpenGL function loading to trace every call a program makes, writing traces with CPU/GPU timing and statistics."
---

# GLTrace / GLHooker

:::: project-header

::: project-info
Status
:   Active development

Language
:   Rust

Source
:   [github.com/lappn99/gltrace_rs](https://github.com/lappn99/gltrace_rs)
:::

::::

The concept and technology of function hooking has always interested me, and I've always wanted to create an OpenGL debugger like `RenderDoc` or `Nvidia Nsight`. I also chose to build it in Rust, in a bid to learn the language better.

This library integrates OpenGL call tracing directly into the program, so launching it through an external tool isn't necessary. It can also write the trace to a file, along with additional statistics and metrics.

It does this by hooking into an [OpenGL function retrieval function](https://www.khronos.org/opengl/wiki/Load_OpenGL_Functions), overwriting its code so that when the program requests an OpenGL function, the hook is returned instead.

## Future plans

I have *lots* of ideas for this project, and if time permits I would love to implement them all, such as:

* Gathering deeper information based on context
    * Right now it only records the parameter name, the raw parameter value (so if a parameter is a pointer, it stores the address), and the CPU and GPU time of a trace. I would like it to gather, for example, the actual _data_ of a buffer, the actual source of a shader, and the actual pixels of a texture, which could then be viewed later in the trace output.
* Live trace analysis
    * The program would act as a client and send info to a server each time a call is made, which could then give the user live feedback.
    * The server could be implemented as, say, a `Visual Studio Code` extension, to integrate the whole process even more into the user's workflow.
* Viewing the draw calls and vertex data captured by a trace in a 3D scene
