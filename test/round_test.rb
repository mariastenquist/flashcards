require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/guess'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
	def test_can_have_round
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		assert_instance_of Round, round
	end

	def test_round_can_have_a_deck
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		assert_equal deck, round.deck
	end

	def test_can_have_guesses
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		assert_equal Array.new, round.guesses
	end

	def test_can_grab_current_card
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		assert_equal card_1, round.current_card
	end

	def test_records_guesses
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		round.record_guess("Juneau")
		round.record_guess("Approximately how many miles are in one astronomical unit?")
		# binding.pry
		assert_equal "Juneau", round.guesses[0].guess
		# assert_equal 2, round.guesses.count
	end

	def test_can_record_percent_correct
		card_1 = Card.new("What is the capital of Alaska?", "Juneau")
		card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
		deck = Deck.new([card_1, card_2])
		round = Round.new(deck)
		round.record_guess("Juneau")
		round.record_guess("Approximately how many miles are in one astronomical unit?")
		assert_equal 50, round.percent_correct
	end
end

