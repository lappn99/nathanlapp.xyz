---
title: Raspberry Pi Pico Multitasker
description: "A library that runs multiple tasks on a single RP2040 core by saving and switching context on a timer interrupt, written partly in ARM assembly."
---

# Raspberry Pi Pico Multitasker

::: project-info
Status
:   Finished

Context
:   Final project for my High Performance Computing class at Trent University

Hardware
:   Raspberry Pi Pico (RP2040)
:::

I am very interested in the [RP2040](https://www.raspberrypi.com/documentation/microcontrollers/rp2040.html), the chip Raspberry Pi designed themselves, as it seemed unique and packs a lot of power into a small space. Because of this, I thought it would be fun to use it as the base for my final project, since we had a lot of flexibility in what we could choose.

I created a library where the user can set up a couple of tasks and have the Pico execute them in parallel. You can't run a proper operating system on these boards, so this requires interfacing with the processor directly. The mechanism is relatively simple: trigger an interrupt every few milliseconds, and in the interrupt handler, save the current context and switch to the next one. This took me out of my usual wheelhouse, as I had never dealt with anything this low-level before, and it meant writing a good chunk of ARM assembly to trigger the interrupts, save the context, and so on.

As this sort of thing requires a good debugging environment, I also set up my own [Pico Probe](https://www.raspberrypi.com/products/debug-probe/), which was fun and interesting in itself.
