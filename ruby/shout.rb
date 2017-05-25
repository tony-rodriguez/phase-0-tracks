module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!" + " :)"
  end
end

p Shout.yell_angrily("I can't stand you")
p Shout.yelling_happily("I got the job")