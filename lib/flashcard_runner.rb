require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

class Runner
	if ARGV[0] != nil
		cards = CardGenerator.new(ARGV[0]).cards
	else
		cards = CardGenerator.new("./lib/cards.txt").cards
	end

		def current_card
			deck.cards.shift
		end

	  def start
    puts Messages.new.welcome
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
    	puts Messages.new.game_over
    	puts "You got #{correct_guesses} correct guesses out of #{@guess_incrementer} for a score of #{percent_correct}%."
    end
  end

deck = Deck.new(cards)
round = Round.new(deck)
runner = Runner.new

runner.start

end




