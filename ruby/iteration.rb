# ---RELEASE 1---

=begin def yield_test(param1, param2)
  puts "Before yield"
  yield(param1, param2)
  puts "After yield"
end

yield_test("Hi", "Hello") {|par1, par2| puts "#{par1}, #{par2}"}

numbers = ["one", "two", "three", "four", "five"]

animals = {
  cat: "kitty",
  dog: "puppy",
  lion: "cub",
  cow: "calf",
  bird: "chick"
}

puts numbers

numbers.each do |num|
  puts num.upcase
end

puts numbers

numbers.map! do |num|
  num.upcase
end

puts numbers

animals.each do |parent, baby|
  puts "#{parent} - #{baby.upcase}"
end

animals.map do |parent, baby|
  animals[parent] = baby.upcase
end

puts animals
=end


# ---RELEASE 2---

# ----ARRAYS----
puts "---Arrays---"
digits = [1, 2, 3 , 4, 5, 6, 7, 8, 9, 10]

# print digits
# 1. Iterates through array, deleting if they meet condition in block
# digits.delete_if {|x| x < 5}

# 2. Iterates through array, keeping only items that satisfy condition in block
# digits.keep_if { |x| x < 5}

# 3. Filters array for items meeting condition in block
# digits.select { |number| number >= 3}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
# digits.drop_while { |x| x < 7 }
# digits.take_while { |x| x < 7 }


#----HASHES----
puts "---Hashes---"
animals = {
  cat: "kitty",
  dog: "puppy",
  lion: "cub",
  cow: "calf",
  bird: "chick"
}
# 1. Iterates through hash, deleting if they meet condition in block
# animals.delete_if { |parent, baby| baby[0] == 'c'}
# animals.reject! { |parent, baby| parent == :dog}

# 2. Iterates through hash, keeping only items that satisfy condition in block
# animals.keep_if { |parent, baby| parent == :bird}

# 3. Filters hash for items meeting condition in block
# animals.select { |parent, baby| baby == "cub"}

# 4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops
# We think #reject! is the best fit for this description, although it is not perfectly equivalent to the array method #take_while or #keep_while