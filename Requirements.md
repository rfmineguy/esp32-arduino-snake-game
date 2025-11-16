# Purpose 
## Scope
This project needs to accomplish the following:
- [ ] playable snake game
- [ ] meet all the feature requirements listed below

## Definitions
- `Graphical Interface`: the display that allows a player to see the game
- `User Input`: the method in which the player interacts/controls the game
- `Food`: game element that increases snake length
- `Wrapping`: the idea of something going off the screen edge, and appearing on
  the other edge
- `LCD`: liquid crystal display
- `Braille Characters`: 2x8 dot matrix characters that have a bunch of on/off
  configuration states
- `Collide`: when two things touch
- `esp32`: a microcontroller
- `resolution`: how many "pixels" we have available to display graphics

## Overview
This project is my entrypoint into embedded programming and hardware
interfacing. I kind of just want to broaden my perspective on computer
programming past the modern desktop computer.

# Description
I will be creating the game snake in hardware using an arduino
power esp32 board.

# Game Goal
As a player, you want to help the snake grow as long as possible without game
overing

# Features
1. Graphical Interface
    - the game should be displayed using a LCD-1602A module (this is a very
      common LCD module)
    - it should make use of braille characters to increase the resolution of the
      game slightly

2. User Input
    - there should be 2 buttons that control the player's direction (one that
      turns the player left, and another right) 
    - there should also be buttons to start, and pause the game

3. Food
    - there needs to be a goal for the game, so lets randomly place food
      particles on the screen for the snake to get
    - when the snake eats the particles, it grows a little bit

4. Game Over
    - the game ends when the snake collides with any part of its own body
    - whatever the length of the snake is at the game over event, is your
      overall score for that round

5. Snake Wrapping
    - because the LCD screen is so small I think the snake should be able to
      wrap around the edges of the screen
    - this will make the game slightly easier to play and less frustrating

# Requirements
1. User Input
    - input needs to be reliable (we cant have double triggering, or lack of
      triggering)

2. Performant
    - given that this is running on a microcontroller, the code for this game
      needs to be efficient enough to be playable
