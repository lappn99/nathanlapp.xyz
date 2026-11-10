---
title: "Survivorman VR: The Descent"
description: "VR survival game for Meta Quest and PlayStation VR. Nathan was the programmer on gameplay, minigames, the Dynamic Digital Humans animation pipeline, and GPU optimization."
image: Media/smvr.jpeg
---

# Survivorman VR: The Descent

:::: project-header

```{=html}
<a class="hero" href="https://www.youtube.com/watch?v=BUNZlBwrZ0w" title="Survivorman VR: The Descent | Official Trailer"><img src="https://img.youtube.com/vi/BUNZlBwrZ0w/maxresdefault.jpg" alt="Watch the Survivorman VR: The Descent trailer on YouTube"></a>
```


::: project-info
Role
:   Programmer

Studio
:   Cream Productions, co-produced with Occupied VR

Type
:   Freelance

Duration
:   About 6 months

Engine
:   Unity

Platform
:   Meta Quest, PlayStation VR

Trailer
:   [Watch on YouTube](https://www.youtube.com/watch?v=BUNZlBwrZ0w)
:::

::::

## About

_Survivorman VR: The Descent_ is a VR game for Meta Quest and PlayStation VR. It is a licensed game adapted from the Canadian show _Survivorman_ starring Les Stroud. Players find themselves trapped on a glacier in the far north and must navigate the environment while completing challenges to survive.

This game was a co-production between _Cream Productions_ and _Occupied VR_.

## What I did

During my time with _Cream_ on this project, I worked on many different areas of the project, from gameplay programming to optimization and graphics debugging.

### Dynamic Digital Humans

First and foremost, I was the main developer of the _Dynamic Digital Humans_ (DDH) animation pipeline in Unity. The DDH process derives textures and 3D models from real-world performances by actors to construct high-quality, game-ready animations.

![DDH in-game demo](Media/smvr_ddh.gif)

#### Challenges

There were two big challenges that came with making this system:

##### Performance

This technology was meant to run natively on the *Meta Quest 2*. With Survivorman already pushing the limits of that modest system, and *Meta* having very strict performance requirements, the overhead for DDH had to be extremely small. Typically the limiting factors for something like this are the quality of the model, the animation(s), and the shader. With DDH, the textures for the face were baked into a video which was then projected onto the 3D model, so there was an extra consideration for the video format: we had to factor in video decoding on the Quest itself.

I used tools such as RenderDoc and the Snapdragon Profiler for extensive low-level profiling and GPU debugging, optimizing DDH to the point where it would not interfere with the performance characteristics of the game.

##### Syncing

Since the 3D animation, audio, and video were essentially separate, one issue that kept cropping up was keeping everything in sync. To fix this I created a system where the three subsystems (video, audio, animation) all talk to each other to stay in sync. This system also had to account for dropped video frames: since the video was the bottleneck in the whole operation, the other two systems had to adapt to it.

### Minigames

In the game itself, I primarily worked on the minigames that intercut the main levels.

![_Glissade_ minigame](Media/smvr_glissade.gif)

In this minigame, players _glissade_ down an icy mountain slope, carefully controlling their slide to avoid obstacles and make it to the bottom. Players control their slide with a metal pole: by dragging the pole on either side of them, they control their speed and direction.
