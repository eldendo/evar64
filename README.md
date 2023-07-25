# evar64
a 'library' for commodore 64 extended variables

# Extended Variables for commodore 64 BASIC (Written in BASIC)
## What is it?
Just a simple dictionary that provide extended variables. The name of the variable can be 255 characters long.
## How to use
The library code starts at linenumber 8000 and should be put after you code.  
In **evar.bas** you'll find this code and a demo program from line 10 to line 500.  

You should use GOSUB 8000 at the start of your program to initialise. You can change the number of available EVARs at line 8070.  
The BASIC variables ev$ and ev are reservated: ev$ contains the name of the variable and ev the value.

the following expressions should be used:
```basic
gosub 8000:rem initialise
ev$="var1":ev=138:gosub 8200:rem declare
ev$="var1":gosub 8300:print ev:rem read  
ev$="var2":ev=100:gosub 8400:rem write
ev$="var2":gosub 8500:rem remove
```

A write changes the value of an existing variable. If you declare a variable with an existing name a new variable ia declared. The old one is 'shadowed' and can not be accessed anymore, until you remove the new version.

For the moment removed variables are not freed. so declaring and removing will use up your variable space.

Try the demo program to see it work.


