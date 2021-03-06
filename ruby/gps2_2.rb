# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split string into an array of individual items
  # set default quantity to 1
  # put each item from the array into the hash
  # print the list to the console [can you use one of your other methods here?] --> print_list
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item to the hash
  # if quantity is not provided, default to 1
# output: updated hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # find key-value pair with a value that matches item name, delete pair
# output: updated hash

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
  # check hash for key that matches item name, reassign value
# output: updated hash

# Method to print a list and make it look pretty
# input: list
# steps:
  # loop through entire hash
  # print key and value with some formatting
# output: string

def create_list(items)
  groceries = items.split(' ')
  grocery_list = Hash.new
  groceries.each do |grocery|
    grocery_list[grocery] = 1
  end
  print_list(grocery_list)
  return grocery_list
end

def add_item(list, item_name, quantity = 1)
  list[item_name] = quantity
  return list
end

def remove_item(list, item_name)
  list.delete(item_name)
  return list
end

def update_quantity(list, item_name, quantity)
  list[item_name]=quantity
  return list
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
  puts "-" *30
end

new_list = "lemonade onions tomato ice-cream"
items_hash = create_list(new_list)
update_quantity(items_hash,"lemonade", 2)
update_quantity(items_hash, "tomato", 3)
update_quantity(items_hash, "ice-cream", 4)
remove_item(items_hash, "lemonade")
update_quantity(items_hash, "ice-cream", 1)

print_list(items_hash)

=begin
---REFLECT---

- In this challenge, we used a more developed pseudocode than what I am used to. I learned that by putting more effort and information in the pseudocode, it saves effort when you are writing the actual code.

- by using arrays and hashes we are not able to define all of these methods within a class that could be created specifically for this type of grocery list. This makes the grocery list a little more cumbersome to work with.

- A method implicitly returns the last line it evaluated, however you can dictate what it returns by using the return keyword.

- You can pass all kinds of things into methods as arguments. This includes integers, strings, booleans, arrays, hashes, etc.

- I feel that this challenge solidified what we learned about working with and manipulating hashes, however I still feel like I have some room to improve when it comes to passing blocks into method and the most effective ways to use them.