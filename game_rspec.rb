require_relative 'game'

describe Wordgame  do
	it "it converts a word into blank spaces, each representing a character of the word" do
		game = Wordgame.new
		expect(game.word_converter("hi")). to eq "_ _"
	end
	
	it "gives you the amount of guesses" do
		game = Wordgame.new
		expect(game.allowed_guess("hello")). to eq 8
	end

	it "turns user input of letter to reveal if it is part of the original word" do
	game = Wordgame.new
	expect(game.correct_input("hello","h")). to eq "h _ _ _ _"
	end

	it "gives a bunch of if/then statements to determine if the letter is in the given word"
	do
	game = Wordgame.new
	expect(game.guess_letter("h","hello")). to eq "Correct!" 
	end
end