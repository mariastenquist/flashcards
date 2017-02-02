class Guess
	attr_reader :guess, :card, :correct_guesses
	def initialize(guess, card)
		@guess = guess
		@card = card
		@correct_guesses = 0
	end

	def correct?
		if guess == card.answer
			@correct_guesses += 1
			return true
		else
			return false
		end
	end

	def feedback
		return "Correct!" if correct? == true
		return "Incorrect!" if correct? == false
	end
end
