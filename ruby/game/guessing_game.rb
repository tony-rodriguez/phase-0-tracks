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
  attr_reader :remaining_guesses, :current, :word

  def initialize(word)
    @word = word.split('')
    @remaining_guesses = (@word.length * 2)
    @already_guessed = []
    @current = []
    @word.length.times { @current << '_' }
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
  end

  def insert_letter(letter)
    @correct_indices = @word.each_index.select { |i| @word[i] == letter}
    @correct_indices.each do |i|
      @current[i] = letter
    end
  end

  def display
    print @current
    puts "You have #{@remaining_guesses} guesses left."
  end
end

puts "Enter word for guessing game"
word = gets.chomp
test = GuessingGame.new(word)
puts "Info about new game:"
print test.word
puts test.remaining_guesses
print test.current

until test.remaining_guesses == 0
  puts "Guess letter pls"
  guess = gets.chomp
  test.guess_check(guess)
  puts "Current status:"
  test.display
end