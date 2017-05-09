puts "Please input your hamster's name."
name = gets.chomp
puts "Enter 1 - 10 for volume level."
volume = gets.chomp.to_i
loop do
  if volume >= 1 && volume <= 10
    break
  else
    puts "Enter 1 - 10 for volume level."
    volume = gets.chomp.to_i
  end
end
puts "Enter fur color."
color = gets.chomp
puts "Good for adoption (y or n)?"
adoption = gets.chomp
loop do
  if adoption == "y" || adoption == "yes"
    adoption = true
    break
  elsif adoption == "n" || adoption == "no"
    adoption = false
    break
  else
    puts "Please try again."
    adoption = gets.chomp
  end
end

puts "Enter age of hamster."
age = gets.chomp
if age == ""
  age = nil
else
  age = age.to_i
end

puts "Name: #{name}\nVolume: #{volume}\nFur Color: #{color}\nAdoption: #{adoption}\nAge: #{age}"