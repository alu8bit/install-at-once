!#/bin/bash

# games installation

#package: moon-buggy
#description: Drive a car across the moon
#command: sudo apt-get install moon-buggy

#package: ninvaders
#description: A space invaders-like game using ncurses
#command: sudo apt-get install ninvaders

#package: greed
#description: Curses-based clone of the DOS free-ware game Greed
#command: sudo apt-get install greed

#package: nsnake
#description: Classic snake game with textual interface
#command: sudo apt-get install nsnake

#package: bastet
#description: Tetris clone with a bastard algorithm
#command: sudo apt-get install bastet

# install all games
sudo apt-get update; sudo apt-get -y install moon-buggy ninvaders greed nsnake bastet
