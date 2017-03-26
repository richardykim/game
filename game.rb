# I will ask the user to enter a word
# I will save that word and have it displayed with underscore symbols, 1 for each letter
# I will then prompt another user to guess the word and change the amount of guesses depending on how many letters there are in the secret.
# I will reveal the letter if the user guess it correctly, or just the blank lines if the user is incorrect.
# If the user gets the word, they will get a congratulatory message.
# If the user does not get the word, they will get a taunting message.


class Wordgame
	attr_reader :word, :allowed_guess
	attr_accessor :letter
	
	def initialize
		@word = word
		@letter = letter
	  @allowed_guess = 0
    @is_over = false
	end
	def word_converter(word)
		split_word = word.split("")
		converted_word = ["_ " * split_word.length ]
		converted_word
	end
	def allowed_guess(word)
	  allowed_guess = 5 + word.length
	    puts "You are allowed #{allowed_guess} guesses "
	end
	def guess_letter(letter,word)
	  if word.include? letter
	    puts TRUE
	  else
	    puts false
	  end
	end
end


## Driver Code

puts "Welcome to the Word Game!"
game = Wordgame.new

puts "Player 1, please enter a word"
word = gets.chomp

puts "Player 2, please try guessing the word by stating a letter"
puts game.allowed_guess(word)
puts game.word_converter(word)
letter = gets.chomp

game.guess_letter(letter,word)

