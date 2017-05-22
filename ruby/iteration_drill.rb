# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
# zombie_apocalypse_supplies.each { |item| print item + '*'}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# using insertion sort method
=begin
def sort_array(arr)
  for x in 1..(arr.length-1)
    key = arr[x]
    y = x-1
    while y >= 0 && arr[y].downcase > key.downcase
      arr[y+1] = arr[y]
      y -= 1
    end
    arr[y+1] = key
  end
end

sort_array(zombie_apocalypse_supplies)
p zombie_apocalypse_supplies
=end
# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
=begin
def check_for(item, arr)
  item_present = false
  arr.each do |thing|
    if thing == item
      item_present = true
    end
  end
  if item_present
    "#{item} is in your supplies."
  else "#{item} not present in supplies."
  end
end
print check_for("shotgun", zombie_apocalypse_supplies)
print check_for("boots", zombie_apocalypse_supplies)
=end
# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
=begin
while zombie_apocalypse_supplies.length > 5 do
  zombie_apocalypse_supplies.delete_at(-1)
end
p zombie_apocalypse_supplies
=end
# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----
# combined_supplies = (zombie_apocalypse_supplies + other_survivor_supplies).uniq!
# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
# extinct_animals.each { |name, year| print "#{name}-#{year}*"}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
=begin
extinct_animals.each do |name, year|
  if extinct_animals[name] >= 2000
    extinct_animals.delete(name)
  end
end

=end
# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
# extinct_animals.each { |name, year| extinct_animals[name] = year + 3}

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
=begin
maybe = ["Andean Cat", "Dodo", "Saiga Antelope"]
maybe.each do |animal|
  extinct_check = false
  extinct_animals.each do |name, year|
    if animal == name
      extinct_check = true
    end
  end
  if extinct_check
    puts "#{animal} is unfortunately extinct."
  else puts "#{animal} is not extinct!"
  end
end
=end
# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
# p extinct_animals.assoc("Passenger Pigeon")
# extinct_animals.delete("Passenger Pigeon")
