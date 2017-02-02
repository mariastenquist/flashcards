require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test
	def test_can_take_a_deck_object
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
		card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
		deck = Deck.new([card_1, card_2, card_3])
		assert_instance_of Deck, stack
	end

	def test_it_can_have_cards
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
		card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
		deck = Deck.new([card_1, card_2, card_3])
		assert_equal 3, stack.count
	end
end