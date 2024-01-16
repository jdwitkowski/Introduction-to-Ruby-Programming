# Exercises from the book

# Exercise 1
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#
# array.each { |num| puts num } 

# Exercise 2

# array.each do |num|
#   if num > 5
#     puts num
#   end
# end

# Exercise 3
#
# new_arr = array.select { |num| num % 2 != 0 }
# puts new_arr

# Exercise 4

# array << 11
# array.prepend(0)
# puts array

# Exercise 5

# array.pop
# array << 3
# puts array

# Exercise 6

# array.uniq!
# puts array

# Exercise 7
# Hashes have key value pairs that are not ordered, arrays do not  key value pairs and are ordered.

# Exercise 8

# hash_1 = {:name => "John", :age => 35}
# hash_2 = {name: "John", age: 35}
# puts hash
# puts hash_2

# Exercise 9

# h = {a: 1, b: 2, c: 3, d: 4}
# puts h[:b]

# h[:e] = 5
# puts h[:e]

# h.each do |key, val|
#   if val < 3.5
#     h.delete(key)
#   end
# end

# puts h

# Exercise 10

# Yes and yes

# Exercise 11

# contact_data = [
#   ["joe@email.com", "123 Main st.", "555-123-4567"], 
#   ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
# ]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# puts contacts

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# Exercise 12
# puts contacts["Joe Smith"][:email]
# puts contacts["Sally Johnson"][:phone]

# Exercise 13

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.delete_if { |str| str.start_with?('s') }
# puts arr

# Exerciwe 14

# a = [
#   'white snow', 'winter wonderland', 'melting ice', 
#   'slippery sidewalk', 'salted roads', 'white trees'
# ]

# a = a.map { |str| str.split }
# a = a.flatten
# puts a

# Exercise 15

# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end

# Exercise 16

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end