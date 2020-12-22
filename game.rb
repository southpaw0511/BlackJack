require_relative 'deck'
require_relative 'interface'
require_relative 'player'

class Game
  
  attr_accessor :player

  def initialize
    @player = Player.new(Interface.name)
  end

  def new_round
    @new_deck = Deck.new
  end

  def give_card
    2.times do 
      @player.add_card(@new_deck.deal_card)
    end
  end

end
