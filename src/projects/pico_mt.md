## Raspberry Pi Pico Multitasker

_School project/Finished_

---

Completed as my final project for my High Performance Computing class taken at Trent University

I am very interested in the [RP2040](https://www.raspberrypi.com/documentation/microcontrollers/rp2040.html) chip that Raspberry Pi designed themselves, as it seemed unique and had a lot of power in a small amount of space. Beacuse of this I thought it would be fun to use it as a base for my final project, as we had alot fo flexibility in what we could choose.

What I did was create a library where the user could set up a couple tasks and have the Pi execute them in parallel. You can not get a proper operating system on these things so it requires interfacing with the processor directly. The mechanism is relatively simple: trigger an interrupt every few milliseconds, in the interrupt handler store the context and switch to the next one. This required me to get out of my usual wheelhouse, as I have never dealt with something this low-level before. It required me writing a good chunk ARM assembly to trigger the interrupts, save the context etc.

As this sort of thing requires a good debug environment I also had to setup my own [Pico Probe](https://www.raspberrypi.com/products/debug-probe/), which was quite fun and interesting.

---

![(Bottom to top) debug probe, and Pico running the actual program ](https://nathanlapp.xyz/media/pico_probe.jpg)

