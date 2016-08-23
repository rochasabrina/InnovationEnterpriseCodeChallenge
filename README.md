The Challenge:

This is a code challenge for Innovation Enterprise!
Please use Ruby to solve it.
If you have any questions, please send an email to: dev@theiegroup.com
Please submit a link to your solution to the above email (or the code files if you prefer).
Happy coding!!

There is a player with a spaceship at position 0 along an axis, and there is an alien at some unknown initial position x_0 on that axis.
The player and the (computer-controlled) alien take turns.
The player tries to hit the alien.
In each player turn the player can set the firing angle alpha of the spaceship and then fire it.
The nozzle velocity v of the spaceship is fixed.
The spaceship ball hits the ground at this distance x_impact from the spaceship: x_impact = (2cos(alpha)sin(alpha)v^2)/g where g = 9.81 m/s^2 is the earth's gravitational acceleration.
In each alien turn the alien moves one step (of some fixed size m) to the right or to the left with equal probability. The game goes on until the spaceship ball hits the ground within a distance d of the alien's current position.
Write a game that lets the user play until he hits the alien.
You can pick values for the fixed parameters in this problem.

