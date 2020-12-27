class Interface
  DEALER_PASS = 'Dealer skip a move'

  DEALER_HIT = 'Dealer take a card'

  DRAW_MESSAGE = 'Draw!'

  WELCOME_MESSAGE = 'Welcome. Enter your name:'

  def initialize
    puts WELCOME_MESSAGE
  end

  def intro
    gets.chomp.to_s
  end

  def welcome_message(to_whom)
    puts "Welcome, #{to_whom}!"
  end

  def new_game_message
    puts 'New game!'
  end

  def show_total_bank(source)
    puts "Total bid: #{source}"
  end

  def show_player_options
    puts '(1) Skip a move (2) Take Card (3) Open card'
  end

  def show_last_options
    puts '(2) Take card (3) Open cards'
  end

  def card_reveal_message
    puts 'The dealer opens the cards....'
  end

  def scoring_message
    puts 'Points are being counted....'
  end

  def show_winner(winner)
    puts "Winner #{winner.name}!"
  end

  def show_draw
    puts DRAW_MESSAGE
  end

  def dealer_pass_message
    puts DEALER_PASS
  end

  def dealer_hit_message
    puts DEALER_HIT
  end

  def show_assets(last_round, player, dealer)
    system('clear')
    puts "#{player.name}:"
    puts "#{player.bank}"
    InlinePrinter.new.print(player.cards)
    puts "Your score: #{player.score}"
    puts '--------------------'
    puts "#{dealer.bank}"
    puts 'Dealer:'
    if last_round == true
      InlinePrinter.new.print(dealer.cards)
      puts puts "Dealer score: #{dealer.score}"
    else
      InlinePrinter.new.print_masked(dealer.cards)
    end
  end
end