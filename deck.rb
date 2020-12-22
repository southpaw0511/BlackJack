require_relative 'card'

class Deck
  attr_accessor :deck
  
  def initialize
    @deck = []
    #create_deck
  end

  def deal_card
    @deck.pop
  end
    
  def create_deck
    Card::SUITS.each do |suit|
      Card::VALUE.each do |rank, value|
        @deck << Card.new(rank, suit, value)
      end
    end
    @deck.shuffle!
  end

end