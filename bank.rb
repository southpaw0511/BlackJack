class Bank
  attr_reader :amount

  NOT_ENOUGH_MONEY = 'Insufficient funds!'.freeze

  def initialize(amount = 0)
    @amount = amount
  end

  def amount_zero?
    @amount == 0
  end

  def to_s
    @amount
  end

  def debit(amount)
    @amount += amount
  end

  def withdraw(amount)
    raise NOT_ENOUGH_MONEY if amount > @amount
    @amount -= amount
  end

  def reset_bank
    @amount = 0
  end
end
