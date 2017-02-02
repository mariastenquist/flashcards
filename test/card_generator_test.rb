require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'

class CardGeneratorTest < Minitest::Test

  def test_can_we_take_cards
    filename = "./lib/cards.txt"
    cards = CardGenerator.new(filename).cards
  end
end