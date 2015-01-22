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
