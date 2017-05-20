# PSEUDOCODE
# First take original string containing name and convert it into an array by splitting it where there is a space (' ')
# Reverse the order of the array of the first and last name
# Convert the names to be all lowercase letters
# Split the names into an array of all individual characters
# Create reference strings containing all consonants and all vowels
# Loop through each letter in the name, check if it appears in either of the reference strings
# Find index where the letter appears, add 1 for the index of the new letter
# Rejoin all characters into a string
# Capitalize first letter in each word

def swap(full_name)
  swapped_name = full_name.split(' ')
  swapped_name.reverse!.join(' ')
end

def split_name(name)
  name.downcase.chars
end

def next_letter(name_array = [])
  # reference strings for vowels and consonants
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  name_array.map! do |letter|
    if vowels.include? letter
      if vowels.index(letter) == (vowels.length - 1)
        #returns first vowel if letter is last vowel (edge condtion)
        vowels[0]
      else vowels[vowels.index(letter) + 1]
      end
    elsif consonants.include? letter
      if consonants.index(letter) == (consonants.length - 1)
        # edge condition for consonants
        consonants[0]
      else consonants[consonants.index(letter) + 1]
      end
    else letter
    end
  end
end

def rejoin(name_arr = [])
  final = name_arr.join('').split(' ')
  final.map! { |word| word.capitalize }
  final.join(' ')
end

def create_alias(name)
  rejoin(next_letter(split_name(swap(name))))
end

secret_agents = {}

puts "Enter the name of each agent. When you are finished, type 'quit'."

input = gets.chomp

until input.downcase == 'quit'
  new_alias = create_alias(input)
  puts "#{input} is now #{new_alias}."
  secret_agents[input] = new_alias
  print "Enter the next name (or 'quit'): "
  input = gets.chomp
end

puts '-'*40

secret_agents.each { |name, secret| puts "#{name} is also known as #{secret}."}