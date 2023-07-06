require 'rspec'
require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)  
    card3 = Card.new(:heart, 'Ace', 14)  
    
    cards = [card1, card2, card3]

    deck = Deck.new(cards)

    it "exists" do
        expect(deck).to be_an_instance_of(Deck)
    end
   
    it "should return the cards" do
        expect(deck.cards).to eq(cards)
    end

    it "should return high ranking" do
       expect(deck.high_ranking_cards).to eq([card1, card3])
    end
end