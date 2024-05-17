## GLTrace/GLHooker

[github link](https://github.com/lappn99/gltrace_rs) 

_Active development_

---

The concept and technology of function hooking has always interested me, and iv'e always wanted to create a OpenGL debugger like `RenderDoc` or `Nvidia Nsight`. I also choose to do it in Rust in a bid to learn it better. 

This library directly integrates the ability to trace OpenGL calls directly into the program, so launching it through an external one isn't necessary. Additionally it can spit out the trace to a file with additional statistics and metrics.

It does this by originally hooking into a [OpenGL function retrieval function](https://www.khronos.org/opengl/wiki/Load_OpenGL_Functions) by overwriting the actual code of it so when the user requests a OpenGL function, the hook is effectively returned instead. 

---

I have *lots* of ideas concerning this project, and if time permits I would love to implement them all.

Such as:

* Gathering deeper information based on context
    * Right now it only records the parameter name, raw parameter value (so if a paramter is pointer it stores the address), and the CPU and GPU time of a trace. I would like it if for example, it gathered the actual _data_ of the buffer, the actual source of the shader and actual pixels of a texture, which then could be viewed later in the trace output.
* Live trace analysis
    * The program would act as a client and send info each time a call is made to the server, which could then give active feedback to the user. 
    * A server could be implemented as say, a `Visual Studio Code` extension to make the whole process even more integrated in the users workflow
* View draw calls and vertex data captured by trace in a 3D Scene
