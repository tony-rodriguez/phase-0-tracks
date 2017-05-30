require_relative 'guessing_game'

describe GuessingGame do
  let (:game) {GuessingGame.new("mystery")}

  it "creates blank string based on input word" do
    expect(game.display).to eq "_______"
  end

  it "adds letter to blank string when guessed" do
    game.guess_check('r')
    expect(game.display).to eq "_____r_"
  end

  it "adds letter correctly when it appears twice in the word" do
    game.guess_check('y')
    expect(game.display).to eq "_y____y"
  end

  it "ends game when all letters are guessed" do
    game.guess_check('m')
    game.guess_check('y')
    game.guess_check('s')
    game.guess_check('t')
    game.guess_check('e')
    game.guess_check('r')
    expect(game.game_complete).to eq true
  end

  it "recognizes when a repeat guess is made" do
    game.guess_check('m')
    expect(game.guess_check('m')).to eq "You've already guessed that letter! Try a different one."
  end

  it "ends game when user runs out of guesses" do
    game.guess_check('n')
    game.guess_check('x')
    game.guess_check('z')
    game.guess_check('p')
    game.guess_check('a')
    game.guess_check('r')
    game.guess_check('w')
    game.guess_check('q')
    game.guess_check('u')
    game.guess_check('i')
    expect(game.game_complete).to eq true
  end

end