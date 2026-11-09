---
title: OpenLU
description: "A server emulator for the defunct MMO Lego Universe, built from the community's reverse-engineered client-server protocol."
---

# OpenLU

::: project-info
Status
:   Development ceased

Source
:   [github.com/lappn99/OpenLU](https://github.com/lappn99/OpenLU)
:::

_Lego Universe_ was an MMORPG released in 2010. Unfortunately it had a very short lifespan, shutting down in 2012. I was one of the lucky ones who got to play it back then. A few years ago I was reminded of it, and stumbled upon a community dedicated to keeping it alive. They did this by reverse engineering the game's client-server protocol. Since clients are still readily available, all it takes is someone to implement a server, of which there [are (or were) many](https://lusprojects.github.io/).

> Fun fact: this very project is linked on that page!

I decided to implement my own server using that spec, and got fairly far: account and character creation work, and actually loading into the world is about 90% done.

However, I underestimated how much work goes into getting even that far, and slowly stopped working on it. Nevertheless, I learned a lot about software architecture, networking, and game development by working on it, and I'm very proud of what I did. It was probably the first non-trivially sized project I worked on.
