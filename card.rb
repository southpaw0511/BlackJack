class Card
  attr_accessor :rank, :suit, :value

  SUITS = ['♤', '♡', '♢', '♧']
  VALUE = {
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9,
    '10' => 10,
    'J' => 10,
    'Q' => 10,
    'K' => 10,
    'A' => 11
  }

  def initialize(rank, suit, value)
    @rank = rank
    @suit = suit
    @value = value
  end

  def to_s(hidden: false)
    unless hidden
  "   ┌───────┐
   │#{rank}      │
   │       │
   │   #{suit}   │
   │       │
   │      #{rank}│
   └───────┘"
     else
  '   ┌───────┐
   │░░░░░░░│
   │       │
   │░░░░░░░│
   │       │
   │░░░░░░░│
   └───────┘'
    end
  end
end
