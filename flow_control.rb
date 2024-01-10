# Problem 2

def caps(string)
  if string.length < 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")

# Problem 3
puts "Please enter a number between 0 and 100:"
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

# Problem 4

# FALSE
# "Did you get it right?"
# "Alright now!"