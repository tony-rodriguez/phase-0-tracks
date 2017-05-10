puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birthyear = gets.chomp.to_i

# create boolean variable to indicate if age input is correct
if age == (2017 - birthyear) || age + 1 == (2017 - birthyear)
  age_check = true
else
  age_check = false
end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (y or n)"
garlic_bread = gets.chomp

# create boolean variable for liking garlic based on input
if garlic_bread == 'y' || garlic_bread == 'yes'
  likes_garlic = true
else
  likes_garlic = false
end

puts "Would you like to enroll in the company health insurance? (y or n)"
insurance = gets.chomp

#create boolean variable to indicate whether or not they would like health insurance
if insurance == 'y' || insurance == 'yes'
  needs_insurance = true
else
  needs_insurance = false
end

# determining the likelihood of being a vampire
result = "Results inconclusive"

if age_check && (likes_garlic || needs_insurance)
  result = "Probably not a vampire"
end
if !age_check && (!likes_garlic || !needs_insurance)
  result = "Probably a vampire"
end
if !age_check && !likes_garlic && !needs_insurance
  result = "Almost certainly a vampire"
end
if name == "Drake Cula" || name == "Tu Fang"
  result = "Definitely a vampire."
end

puts result

