# --- Guessing Game ---
# Prompt user for word to enter
# split word into array of letters to be used for reference
# establish array to be displayed to users, consisting of underscores in the amount of the inputted word's length
# prompt users for letters as their guesses, one at a time
# put each guess into a new array, cross checking the reference array containing the original inputted word
# reassign values of display array with the correct letter at the indices where a guess letter appears in original word
# when a guess is inputted, check the array containing guesses to make sure it wasn't already guessed
# if a guess is repeated, do not count it towards the limit and display a message notifying the user
# Guesses are limited to the length of the original word + 4

class GuessingGame
  attr_reader :game_complete

  def initialize(word)
    @word = word.downcase.split('')
    @remaining_guesses = @word.length + 3
    @already_guessed = []
    @current = []
    @word.length.times { @current << '_' }
    @game_complete = false
    puts ".\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n."
    puts "New game started! Try to guess letters to fill in all the blanks.\nYour mystery word is below:"
    display
  end

  def guess_check(letter)
    if @already_guessed.include? letter
      puts "You've already guessed that letter! Try a different one."
      return "You've already guessed that letter! Try a different one."
    else
      @remaining_guesses -= 1
      @already_guessed << letter
      if @word.include? letter
        puts "Good guess!"
        insert_letter(letter)
      else
        puts "No luck!"
      end
    end
    if @remaining_guesses == 0 && @game_complete == false
        loss
    end
  end

  def insert_letter(letter)
    @correct_indices = @word.each_index.select { |i| @word[i] == letter }
    @correct_indices.each do |i|
      @current[i] = letter
    end
    # check if word is complete after each time a letter is inserted
    if !@current.include? '_'
      victory
    end
  end

  def display
    puts @current.join
    if !game_complete
      puts "You have #{@remaining_guesses} guesses left."
    end
    puts "="*80
    @current.join
  end

  def victory
    puts "Congrats, you won with #{@remaining_guesses} guess(es) to spare!"
    @game_complete = true
  end

  def loss
    puts "Ha, you ran out of guesses and lost! Do better next time."
    @game_complete = true
  end
end

# ---Driver code for guessing game (comment out if testing)---
puts "Enter word for guessing game"
word = gets.chomp
test = GuessingGame.new(word)

until test.game_complete
  print "Guess a letter: "
  guess = gets.chomp
  test.guess_check(guess)
  puts "Current status of word:"
  test.display
end