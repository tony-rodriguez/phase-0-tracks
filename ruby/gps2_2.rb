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
  return grocery_list
end

arr = "stuff thing item carrot apple"

p create_list(arr)

