
## Find

* Some Io example problems
    * https://gist.github.com/jezen/7972975
* An Io community that will answer questions
    * http://www.reddit.com/r/iolang/
* A style guide with Io idioms
    * http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

## Answer

* Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
    * Weakly typed - we can assign 1 then "one" to the same slot
```Io
Io> fred := 1
==> 1
Io> fred = "one"
==> one
```
* Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
    * 0 is true
    * "" is true
    * nil is false
```Io
Io> 0 and true
==> true

Io> "" and true
==> true

Io> nil and true
==> false
```
* How can you tell what slots a prototype supports?
```Io
Io> Object proto slotNames
==> list(exit, Lobby, set_, _, Protos, forward)
```
* What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
    * = (equals) - Assigns value to slot if it exists, otherwise raises exception
    * := (colon equals) - Creates slot, assigns value
    * ::= (colon colon equals) - Creates slot, creates setter, assigns value

## Do

* Run an Io program from a file.
```Io
type MyFirstIoProgram.io
"This is my first Io program" print

set IoBinDir=C:\Users\taylojo\Downloads\iobin-win32-current\Extracted\IoLanguage\bin

%IoBinDir%\Io.exe MyFirstIoProgram.io
This is my first Io program
```
* Execute the code in a slot given its name.
```Io
Io> Dog := Object clone
==>  Dog_0x25e24f8:
  type             = "Dog"

Io> Dog bark := method("woof!" print)
==> method(
    "woof!" print
)
Io> Dog bark
woof!==> woof!
```
