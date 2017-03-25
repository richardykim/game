# I will ask the user to enter a word
# I will save that word and have it displayed with underscore symbols, 1 for each letter
# I will then prompt another user to guess the word and change the amount of guesses depending on how many letters there are in the secret.
# I will reveal the letter if the user guess it correctly, or just the blank lines if the user is incorrect.
# If the user gets the word, they will get a congratulatory message.
# If the user does not get the word, they will get a taunting message.

class Wordgame
	def initialize
		@word = word 
	end
	def word_splitter(word)
		split_word = word.split
	end

end


## Driver Code

puts "Welcome to the Word Game!"
game = Wordgame.new

puts "Player 1, please enter a word"
word = gets.chomp

puts "Player 2, please try guessing the word by stating a letter"
letter = gets.chomp