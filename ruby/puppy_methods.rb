class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    puts "Woof "*int
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    int*7
  end

  def play_dead
    puts "*falls and rolls over*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

class Microwave

  def initialize
    puts "Initializing new microwave..."
  end

  def defrost(food)
    puts "What is the weight of your #{food} (in lbs)?"
    weight = gets.chomp.to_i
    puts "Defrosting for #{weight*2} minutes."
  end

  def timer
    puts "Timer setup:\nHow many minutes?"
    minutes = gets.chomp.to_i
    puts "How many seconds?"
    seconds = gets.chomp.to_i
    puts "Microwave will beep annoyingly in #{minutes} minutes and #{seconds} seconds."
  end

  def beep(times)
    puts "BEEP!"*times
  end

  def open
    puts "*opens*"
  end

end

fido=Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
puts fido.dog_years(5)
fido.play_dead


sunbeam = Microwave.new
sunbeam.defrost('chicken')
sunbeam.timer

microwave_array = 50.times.collect { |i| microwave = Microwave.new }

microwave_array.each do |oven|
  # used methods that do not require user input for the loop
  oven.beep(3)
  oven.open
end

p microwave_array.length