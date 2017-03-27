require_relative 'game'

describe Wordgame  do
	it "it converts a word into blank spaces, each representing a character of the word" do
		game = Wordgame.new
		expect(game.word_converter("hi")). to eq "_ _"
	
end