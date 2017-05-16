# INTERIOR DESIGN HASH

# Create hash including all desired keys, with values of nil
# Iterate over hash to populate all values
# Convert input to correct variable types (when necessary)
# Print completely populated hash
# Prompt user to change or update a value

def to_bool(input)
  if input.downcase == 'y' || input == 'yes'
    true
  else
    false
  end
end

preferences = {
  name: nil,
  age: nil,
  favorite_color: nil

}

print "Enter name: "
preferences[:name] = gets.chomp
print "Enter age: "
preferences[:age] = gets.chomp.to_i
print "Enter favorite color: "
preferences[:favorite_color]

p preferences
