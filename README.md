# Description

Stackup editor helps to create stackup diagram for KiCAD PCBs. 
Stackup diagram may be required for some PCB factories. 

## Do I need this ?

Popular PCB factories usually already have stackup editor embedded into their online order forms,
so there is no need for separate diagram. 
Others will explicitly ask you about stackup. 
Even then you can just describe stackup in textual form. 
This program is just for unification and convenience.

# Install

## Ubuntu 18.10

Ubuntu 18.10 already has all prerequisites installed, just run the script

## Running from source

This program requires python3, gtk3, cairo, pango.
Install prerequisites and run **kicad-stackup-editor**.

## Building deb package for your system

This repository contains Makefile which can be used to build *deb* package.

To build package run:

```
make deb
```

Package building script requires python3-stdeb, lsb_release, debuild, git.
To install these packages run:

```
# apt-get install python3-stdeb lsb-release devscripts git
```
