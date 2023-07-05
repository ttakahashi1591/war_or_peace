class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end

    def rank_of_card_at(index)
        if index < 0 || index > 2

        @cards[index].rank
    end

    def 

end