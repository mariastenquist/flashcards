require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

	def test_can_take_a_guess_object
		card = Card.new("Which planet is closest to the sun?", "Mercury")
		guess = Guess.new("Saturn", card)
		assert_instance_of Guess, guess
		assert_equal card, guess.card
		# assert_equal "Saturn", guess.response
	end

	def test_can_take_a_guess
		card = Card.new("Which planet is closest to the sun?", "Mercury")
		guess = Guess.new("Mercury", card)
		assert guess.correct?
	end

	def test_it_can_give_positive_feedback
		card = Card.new("Which planet is closest to the sun?", "Mercury")
		guess = Guess.new("Mercury", card)
		assert_equal "Correct!", guess.feedback
	end

	def test_it_can_give_negative_feedback
		card = Card.new("Which planet is closest to the sun?", "Mercury")
		guess = Guess.new("Saturn", card)

		assert_equal false, guess.correct?
	end
end

