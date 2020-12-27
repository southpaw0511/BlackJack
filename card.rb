class Card
  attr_accessor :rank, :suit, :value

  SUITS = ['♤', '♡', '♢', '♧'].freeze
  VALUE = {
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    'X' => 10,
    'J' => 10,
    'Q' => 10,
    'K' => 10,
    'A' => 11
  }.freeze

  def initialize(rank, suit, value)
    @rank = rank
    @suit = suit
    @value = value
  end

  def ace?
    @rank == 'A'
  end

  def to_s(hidden: false)
    if hidden
      '   ┌───────┐
       │░░░░░░░│
       │       │
       │░░░░░░░│
       │       │
       │░░░░░░░│
       └───────┘'
    else
      "   ┌───────┐
       │#{rank}      │
       │       │
       │   #{suit}   │
       │       │
       │      #{rank}│
       └───────┘"
    end
  end
end
