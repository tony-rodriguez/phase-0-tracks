# INTERIOR DESIGN HASH

# Create empty hash
# Prompt user for input to populate hash
# Convert input to correct variable types (when necessary)
# Print completely populated hash
# Prompt user to change or update a value
# Change/update a value
# Print hash

def to_bool(input)
  if input == 'y' || input == 'yes'
    true
  else
    false
  end
end

def update(preferences = {}, category)
  if category == "none"
    return
  elsif category == "age" || category == "children"
    puts "What would you like the new value to be?"
    preferences[category.to_sym] = gets.chomp.to_i
  elsif category == "patterns" || category == "nature"
    puts "What would you like the new value to be? (y or n)"
    preferences[category.to_sym] = to_bool(gets.chomp.downcase)
  else
    puts "What would you like the new value to be?"
    preferences[category.to_sym] = gets.chomp
  end
end

preferences = {}

print "Enter name: "
preferences[:name] = gets.chomp
print "Enter age: "
preferences[:age] = gets.chomp.to_i
print "Enter favorite color: "
preferences[:favorite_color] = gets.chomp
print "Enter number of children: "
preferences[:children] = gets.chomp.to_i
print "Do you like patterns? (e.g. stripes, checks, etc.) (y or n): "
preferences[:patterns] = to_bool(gets.chomp.downcase)
print "Do you like scenes of nature? (y or n): "
preferences[:nature] = to_bool(gets.chomp.downcase)
print "Do you prefer earthy tones or bright colors?: "
preferences[:tones] = gets.chomp

puts "See below for the information you have entered."
puts "-"*20 #to make output more readable
preferences.each do |category, input|
  puts "#{category.to_s.capitalize}: #{input}"
end
puts "-"*20
puts "If there is a category you would like to change, please enter it.\nIf not, enter 'none'."
change = gets.chomp.downcase

update(preferences, change)

puts "To confirm, here is the latest information:"
puts "-"*20
preferences.each do |category, input|
  puts "#{category.to_s.capitalize}: #{input}"
end
puts "-"*20