# Taishou - DIY ergonomic split keyboard
The current state of the keyboard is a fully working minimum viable product. It's still a bit fragile and I'm cautious when transporting it. 
One day I felt intrigued by split keyboards. I quickly found a EU site and I started adding parts to the cart. After I had everything, I was looking at 200€ plus shipping. No deal. I had some opinions on the options any way. I then had the dumb idea to make it myself from scratch. 

## Design
I settled for a column staggered keyboard because I always thought normal (row staggered) keyboards were confusing for my fingers, for example pressing the C key with either the index or middle finger, depending on the specific position of my hand. With column staggered I would be forced to learn to always press C with the middle finger. I curled my fingers and roughly traced out the curve on a piece of paper. After that I created a "proper" layout using KLE, a pretty standard way of desiging keyboard layouts. I noted the stagger for each columns and opened up Fusion 360.

## Mk. 3
Mk.3 will feature a custom PCB. The PCB is designed to be reversible to reduce waste (PCB manufacturers usually have a minimum number of boards for a design). The reversability has posed a design challenge but should work and is being validated. The reversability also prompted a proper brand for the keyboard; Taishou, symmetry in Japanese. Mk.3 also gets new switches and proper keycaps, adding a significant amount to the otherwise cheap design. If Mk.2 cost around 50€ of material and a couple of hours of work, Mk.3 will be closer to 100€, which is still significantly cheaper than off-the-shelf keyboards or even many DIY kits.

Mk.3 also got new plates due to the new switches. The plate is based on the original outline but now made using OpenSCAD.

## Mk. 2
For the second version I started from scratch. I desoldered the switches and threw everything else out. I knew I had to get hotswap sockets for the second version. This time I sourced everything from AliExpress. The 1N4148 diodes that cost me 10€ in Finland were a couple euros from AliExpress. The microcontrollers were 70% cheaper. The hotswap sockets were 2€. This time, I also got proper TRRS sockets and a nice looking cable.

I also started the design from scratch, this time using 3D models for everything I could find. I used the same column stagger, but otherwise started from scratch. When I was happy with the design, I exported the plates to SVG and had a local workshop cut them out of 3mm acryllic. This cost me 10€. The holes were slightly too big so the switches would pop out without any effort. This lead me to design a backing for the switches. It took 3 prototypes, but in the end I got a 3D printed part that would hold on to the switch from the otherside of the plate. When glued together with neighboring back pieces, they would also form a sort of strain relief for the otherwise very fragile switch matrix. Speaking of the switch matrix, I had to redo that as well. This was another few hours of headache. 

## Mk.1
The first version of the keyboard was nothing more than a proof of concept. The 3D printer's bed size and bad insulation meant that printing large ABS parts was just not possible, so I printed each half in 4 parts and joined them with epoxy. Each Cherry MX switch was then pushed into respective holes and soldering started. It took a couple painstaking hours to solder the some 400 joins. The microcontrollers were seated with female jumper pins that the rows and columns where soldered to. As I couldn't find TRRS jacks, I created a cable using fan headers. The cable was perhaps the most proprietary cable the world has seen. Electronics cost around 40€. The headache cost me everything.
