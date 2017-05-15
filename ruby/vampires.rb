# method to determine the likelihood of being a vampire
def determine_vampire (likes_garlic, needs_insurance, age_check, name)
  result = "Results inconclusive."

  if age_check && (likes_garlic || needs_insurance)
    result = "Probably not a vampire."
  end
  if !age_check && (!likes_garlic || !needs_insurance)
    result = "Probably a vampire."
  end
  if !age_check && !likes_garlic && !needs_insurance
    result = "Almost certainly a vampire."
  end
  if name == "Drake Cula" || name == "Tu Fang"
    result = "Definitely a vampire."
  end
  return result
end

puts "How many employees are being processed?"
entries = gets.chomp.to_i

iterations = 0

until iterations == entries do
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "In what year were you born?"
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
  puts "Please enter all allergies, one by one. (Type 'done' when finished)"
  allergy = gets.chomp
  while allergy != "done" do
    if allergy == "sunshine" || allergy == "Sunshine"
      break
    else
      allergy = gets.chomp
    end
  end
  # If allergic to sunshine, we already know result. If not, we can use the answers to the other questions to determine result, by using the determine_vampire method.
  if allergy == "sunshine" || allergy == "Sunshine"
    result = "Probably a vampire."
  else
    result = determine_vampire(likes_garlic, needs_insurance, age_check, name)
  end

  puts "The result for employee #{iterations + 1} is: #{result}"
  iterations += 1
end

puts "All entries processed"
puts "...\n...\n...\nActually, never mind! What do these questions have to do with anything? Lets all be friends."