# Survivorman VR: The Descent


[![SMVR Trailer](http://img.youtube.com/vi/BUNZlBwrZ0w/0.jpg)](http://www.youtube.com/watch?v=BUNZlBwrZ0w "Survivorman VR: The Descent | Official Trailer")

--- 

## About

_Survivorman VR: The Descent_ is a VR game for Meta Quest and Playstation VR. It is a licensed game adapted from the Canadian show _Survivorman_ starring Les Stroud. Players find themseleves trapped on glacier in the far north and must navigate the environment while doing challenges to survive. 

This game was a co-production between _Cream Productions_ and _Occupied VR_.

---

## Project Info

Project Type: Freelance

Time on Project: About 6 months

Engine Used: Unity

---

## What I did

During my time with _Cream_ working on this project, I was the only "Programmer" and person with a technical background, because of this I worked on a lot of different areas of the project. From gameplay programmer to optimization and graphics debugging. 

### Dynamic Digital Humans

First and foremost I was the main developer of the _Dynamic Digital Humans_ (DDH) animation pipeline in Unity. The DDH process derives textures and 3D models from real-world performances by actors to construct high quality game-ready animations. 

![DDH in-game demo](https://nathanlapp.xyz/media/smvr/ddh_demo.gif)

#### Challenges

There were two big challenges that came with making this system:

##### Performance

This technology was meant to run on natively on the *Meta Quest 2*, with Survivorman already pushing the limit of the modest system, and *Meta* having very strict performance requirements, it meant that the overhead for DDH had to be extremely minimal. Typically the limiting factor for something like this would be the quality of the model, animations(s), and the shader. With DDH, the textures for the face were baked into a video which was then projected onto the 3D model. This meant there was an extra consideration for the video format as we had to factor in video decoding on the Quest itself. 

I had to employ tools such as RenderDoc and SnapDragon profiler to do extensive low-level profiling and GPU Debugging to optimize DDH to a place so that it would not interfer with the performance characteristics of the game.

##### Syncing

Since the 3D Animation, audio, and video were essentially separate, one issue that kept propping up was keeping everything in sync. To fix this I had to create a system where each of the three subsystems (Video, audio, animation) all had to talk to each other to keep in sync. This system also had to account for the dropped frames from the video. Since the video was the bottleneck in this whole operation, the other two systems had to account for it. 

---

### Minigames

In the actual game I primarily worked on the minigames that intercut the main levels.

![_Glissade_ Minigame](https://nathanlapp.xyz/media/smvr/smvr_minigame1.gif)

This Minigame saw users _Glissading_ down an icy mountain slope, carefully controlling their slide to avoid obstacles and make it to the bottom. Players control their slide with a metal pole, by dragging the pole on either side of them they can control their speed and direction.
