---
title: "DENG GAO SHANG GAO RēVERIE"
description: "Experimental VR experience for Meta Quest. Nathan designed and implemented its hidden hand-gesture interactions with the Meta Interaction SDK."
image: Media/picnicvr.gif
---

# DENG GAO SHANG GAO RēVERIE

::: project-info
Role
:   Design and implementation of hand-gesture interactions

Studios
:   Invalid Symbol and [Music Picnic](http://www.musicpicnic.com/)

Type
:   Freelance

Duration
:   About 3 months

Engine
:   Unity (Meta Interaction SDK)

Platform
:   Meta Quest
:::

## About

_DENG GAO SHANG GAO RēVERIE_ is an experimental VR experience for the _Meta Quest_, developed jointly by _Invalid Symbol_ and _[Music Picnic](http://www.musicpicnic.com/)_. Split into two parts, it transports the user to a surreal but tranquil land where they don't need to do anything but soak it all in, set to the music of Toronto composer _Njo Kong Kie_. The experience also features several *hidden* ways to interact with the environment via hand gestures.

## What I did

### Hand-gesture interactions

I was originally brought on to design and implement the various _hand gestures_ that the player can perform during the experience, using the `Meta Interaction SDK`. In all, around 6 of them made it into the final product. This meant not only the hand-gesture detection itself, but also designing and implementing how the environment reacts to each gesture. Typically this meant animating various properties of the `GameObjects` affected by the interaction, and I also worked extensively with Unity's `Particle System`.

#### Challenges

The biggest challenge was designing these interactions to fit the goal of the project and the wishes of the client. The gestures had to be extremely simple to perform, while the environment's reaction had to be subtle enough not to take away from the greater experience. These interactions weren't meant to be the user's focus; they're a fun Easter egg the user might discover by accident (we didn't even let users see their own hands in the headset).
