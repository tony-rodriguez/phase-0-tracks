# --- Guessing Game ---
# Prompt user for word to enter
# split word into array of letters to be used for reference
# establish array to be displayed to users, consisting of underscores in the amount of the inputted word's length
# prompt users for letters as their guesses, one at a time
# put each guess into a new array, cross checking the reference array containing the original inputted word
# reassign values of display array with the correct letter at the indices where a guess letter appears in original word
# when a guess is inputted, check the array containing guesses to make sure it wasn't already guessed
# if a guess is repeated, do not count it towards the limit and display a message notifying the user
# Guesses are limited to 2x the length of the original word

class GuessingGame
  attr_reader :remaining_guesses, :current, :word, :game_complete

  def initialize(word)
    @word = word.split('')
    @remaining_guesses = (@word.length * 2)
    @already_guessed = []
    @current = []
    @word.length.times { @current << '_' }
    @game_complete = false
  end

  def guess_check(letter)
    if @already_guessed.include? letter
      puts "You've already guessed that letter! Try a different one."
    else
      @remaining_guesses -= 1
      @already_guessed << letter
      if @word.include? letter
        insert_letter(letter)
      else
        puts "Guess again!"
      end
    end
    if @remaining_guesses == 0
        loss
    end
  end

  def insert_letter(letter)
    @correct_indices = @word.each_index.select { |i| @word[i] == letter}
    @correct_indices.each do |i|
      @current[i] = letter
    end
    # check if word is complete after each time a letter is inserted
    if !@current.include? '_'
      victory
    end
  end

  def display
    puts @current.join('')
    puts "You have #{@remaining_guesses} guesses left."
    puts "-"*40
  end

  def victory
    puts "Congrats, you won with #{@remaining_guesses} guesses to spare!"
    @game_complete = true
  end

  def loss
    puts "Ha, you ran out of guesses and lost! Try to do better next time."
    @game_complete = true
  end
end

puts "Enter word for guessing game"
word = gets.chomp
test = GuessingGame.new(word)
puts "Info about new game:"
p test.word
puts test.remaining_guesses
p test.current

while !test.game_complete
  puts "Guess letter pls"
  guess = gets.chomp
  test.guess_check(guess)
  puts "Current status:"
  test.display
end