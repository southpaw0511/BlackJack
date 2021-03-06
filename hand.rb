class Hand
  attr_accessor :cards

  MAX_CARD_WARNING = 'You already have 3 cards'.freeze

  def initialize
    @cards = []
  end

  def score
    sum = cards.map(&:value).sum
    ace_correction(sum)
  end

  def max_cards?
    cards.count >= GameRules::MAX_CARDS
  end

  def add_card(card)
    raise Hand::MAX_CARD_WARNING if max_cards?
    @cards << card
  end

  private

  def ace_correction(sum)
    cards.each do |card|
      if (sum > GameRules::BLACK_JACK) && card.ace?
        sum -= GameRules::ACE_SCORE_DECISION_BREAKPOINT
      end
    end
    sum
  end
end
