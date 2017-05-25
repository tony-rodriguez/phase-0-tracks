class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
  end
end


# santas = []

gender_ary = ["agender", "pangender", "non-binary", "male", "female", "other", "bigender", "gender fluid", "N/A"]
ethnicity_ary = ["Albanian", "Nepali", "Zulu", "Uzbek", "other", "Latino", "prefer not to say", "N/A"]

# gender_ary.length.times do |i|
#   santas << Santa.new(gender_ary[i], ethnicity_ary[i])
# end

# testboi = Santa.new("male", "Hispanic")
# p testboi
# testboi.gender = 'female'
# 5.times {testboi.celebrate_birthday}
# testboi.get_mad_at('Dancer')
# p testboi.age
# p testboi.ethnicity
# p testboi

1000.times do
  s = Santa.new(gender_ary.sample, ethnicity_ary.sample)
  s.age = rand(140)
  p "Ethnicity: #{s.ethnicity}"
  p "Gender: #{s.gender}"
  p "Age: #{s.age}"
end
