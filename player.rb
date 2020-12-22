class Player
  attr_accessor :name, :bank

  def initialize(name)
    @name = name
    @bank = 100
    @cards = []
  end

  def add_card(deal_card)
    @cards << deal_card
  end
end