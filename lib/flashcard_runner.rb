require './lib/card'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

if ARGV[0] != nil
	cards = CardGenerator.new(ARGV[0]).cards
else
	cards = CardGenerator.new("./lib/cards.txt").cards
end
deck = Deck.new(cards)
round = Round.new(deck)

round.start




