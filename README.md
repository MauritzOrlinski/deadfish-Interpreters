# c-deadfish-interpreter
This is an interpreter for the Deadfish programming language. 

## What is Deadfish
Deadfish is a programming language, with only four different operations, increasing, decreasing, squaring and outputting a number. It was created by Jonathan Todd Skinner 
and was released under public domain. Find more information about Deadfish on [esolang (click here)](https://esolangs.org/wiki/Deadfish)

## Hello world in Deadfish
The code for "Hello, world!" is:
```
iiisdsiiiiiiiioiiiiiiiiiiiiiiiiiiiiiiiiiiiiioiiiiiiiooiiiodddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddoddddddddddddodddddddddddddddddddddsddoddddddddoiiioddddddoddddddddodddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddo
```

## How to use my program
I used program arguments for inputting my code into my program. The first parameter has to by the code you want to interpret, the second is an optional argument to pick if you want the program to print the ASCII or the symbol.
In case you want the ASCII value just append nothing, in case you want the symbol append 's' for symbols or just write something that begins with an s like "symbols".
### Error handling
In case the input contains an illegal character which would also be a whitespace or the program arguments do not fit the expected format, the program will return -1 and prints out an Error message. This means that this program only excepts a small subset of Deadfish programs.
