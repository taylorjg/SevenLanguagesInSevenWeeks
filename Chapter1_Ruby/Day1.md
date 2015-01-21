
## Find

* The Ruby API
    * http://www.ruby-doc.org/core-2.2.0/
* The free online version of _Programming Ruby: The Pragmatic Programmer's Guide_
    * http://ruby-doc.com/docs/ProgrammingRuby/
* A method that substitutes part of a string
    * http://www.ruby-doc.org/core-2.2.0/String.html#method-i-sub
* Information about Ruby's regular expressions
    * http://ruby-doc.org/core-2.1.1/Regexp.html
* Information about Ruby's ranges
    * http://www.ruby-doc.org/core-2.2.0/Range.html

## Do

* Print the string "Hello, world"
```ruby
print "Hello, world"
print 'Hello, world'
```
* For the string "Hello, Ruby", find the index of the word "Ruby"
```ruby
"Hello, Ruby".index("Ruby")
```
* Print your name ten times
```ruby
x = 0
while x < 10
  puts "Jonathan Taylor"
  x = x + 1
end
```
* Print the string "This is sentence number 1" where the number 1 changes from 1 to 10
```ruby
x = 0
while x < 10
  puts "This is sentence number #{x + 1}"
  x = x + 1
end
```
* Run a program from a file
```ruby
$ type MyFirstRubyProgram.rb
puts "This is my first Ruby program"

$ ruby MyFirstRubyProgram.rb
This is my first Ruby program

$
```
* Bonus problem
```ruby
$ type GuessNumber.rb
num = rand(10)
print "Guess a number between 0 and 9 inclusive: "
guess = Integer(gets)
while guess != num
  puts "You guessed too low" if guess < num
  puts "You guessed too high" if guess > num
  print "Have another go: "
  guess = Integer(gets)
end
puts "You guessed correctly - the number is #{num}"

$ ruby GuessNumber.rb
Guess a number between 0 and 9 inclusive: 5
You guessed too high
Have another go: 3
You guessed too high
Have another go: 4
You guessed too high
Have another go: 2
You guessed correctly - the number is 2

$
```

