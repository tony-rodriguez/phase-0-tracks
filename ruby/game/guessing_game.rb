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
