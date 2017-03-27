# I will ask the user to enter a word
# I will save that word and have it displayed with underscore symbols, 1 for each letter
# I will then prompt another user to guess the word and change the amount of guesses depending on how many letters there are in the secret.
# I will reveal the letter if the user guess it correctly, or just the blank lines if the user is incorrect.
# If the user gets the word, they will get a congratulatory message.
# If the user does not get the word, they will get a taunting message.

class Wordgame
	attr_reader :word, :guesses
	
	def initialize
		@word = word
	  @guesses = 0
	  @joined_word = ""
	  @converted_word = ""
	end
	def word_converter(word)
		@converted_word = ["_ " *word.length ]
		@converted_word
	end
	def allowed_guess(word)
	  @guesses = 3 + word.length
	    puts "You are allowed #{@guesses} guesses "
	end
	
	def correct_input(word, letter)
	  if word.include? letter
	    number = word.index(letter)
	    @joined_word = @converted_word.join
      @joined_word[number*2] = letter
	    puts @joined_word
	  end
	end

	def guess_letter(letter, word)
	  right_guess = ""
  	  if word.include? letter
  	    if right_guess.include? letter
  	      puts letter + "was already given. Please try another letter"
  	      puts @joined_word
  	     else 
  	      puts "Correct!"
  	      correct_input(word, letter)
  	     end
  	    unless @joined_word.include? "_"
  	      puts "WELL DONE! YOU WIN!"
  	    end
  	    puts "You have #{@guesses} guesses left"
  	  else
  	    puts "I'm sorry, #{letter} is not in the word."
  	    @guesses = @guesses - 1
  	    if @guesses == 0 
  	      puts "Game over!"
  	    else 
  	      
  	      puts "you are allowed #{@guesses} guesses"
  	    end
  	  end
  	 # unless @joined_word.include? '_'
    #     puts "WELL DONE!! YOU WIN!"
    #   end
	end
end


## Driver Code

puts "Welcome to the Word Game!"
puts "Player 1, please enter a word"
word = gets.chomp
game = Wordgame.new


puts "Player 2, please try guessing the word by stating a letter"
puts game.allowed_guess(word)
puts game.word_converter(word)

until game.guesses == 0
  letter = gets.chomp
  game.guess_letter(letter, word)
end 
