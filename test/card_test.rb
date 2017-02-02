# gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
# require 'pry'

class CardTest < Minitest::Test

	def test_it_takes_a_card
		card = Card.new("What is the capital of Alaska?", "Juneau")
		assert_instance_of Card, card
	end

	def test_it_takes_a_question
		card = Card.new("What is the capital of Alaska?", "Juneau")
		assert_equal "What is the capital of Alaska?", card.question
	end

	def test_it_takes_an_answer
		card = Card.new("What is the capital of Alaska?", "Juneau")
		assert_equal "Juneau", card.answer
	end

	# def test_can_take_a_guess
	# 	card = Card.new("Which planet is closest to the sun?", "Mercury")
	# 	guess = Guess.new("Saturn", card)
	# 	assert_equal card, guess.card
	# 	assert_equal "Saturn", guess.response
	# 	assert_equal false, guess.correct?
	# 	assert_equal "Incorrect.", guess.feedback
	# end
end
