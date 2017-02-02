require './lib/guess'
require './lib/messages'
require './lib/card_generator'
require './lib/card'
require 'pry'

class Round
	attr_reader :deck, 
							:guesses, 
							:correct_guesses

	def initialize(deck)
		@deck = deck
		@guesses = []
		@correct_guesses = 0
		@guess_incrementer = 0
		@deck_total = deck.count
	end

	def current_card
		deck.cards.shift
	end

	def record_guess(guess, current)
		@guess_incrementer += 1
		recorded_guess = Guess.new(guess, current)
		@guesses << recorded_guess
		if recorded_guess.correct?
			@correct_guesses += 1 
		end
	end

	def percent_correct
		((@correct_guesses.to_f / guesses.count) * 100).to_i
	end

  def start
    puts Messages.welcome
    current = current_card
    if current != nil
      puts "This is card number #{@guess_incrementer + 1} out of #{@deck_total}."
      puts current.question
      guess = gets.chomp.downcase
      current_guess = Guess.new(guess, current)
      record_guess(guess, current)
      puts current_guess.feedback
      start
    else
    	puts Messages.game_over
    	puts "You got #{correct_guesses} correct guesses out of #{@guess_incrementer} for a score of #{percent_correct}%."
    end
  end
end