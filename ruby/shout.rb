# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!" + " :)"
#   end
# end

# p Shout.yell_angrily("I can't stand you")
# p Shout.yelling_happily("I got the job")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!" + " :)"
  end
end

class Person
  include Shout
end

class Parrot
  include Shout
end

new_grad = Person.new
polly = Parrot.new

puts new_grad.yell_happily("I did it")
puts new_grad.yell_angrily("My hair is a mess")
puts polly.yell_angrily("feed me")
puts polly.yell_happily("thank you")