def welcome
  # prints out welcome statement
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # method deals a card
  rand(11)+1
end

def display_card_total(card_total)
  # method displays total amount of cards
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # method asks user if they'd like to hit or stay
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # method captures user input
  gets.chomp
end

def end_game(total)
  # method prints end game statement
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # method starts game by dealing two cards
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  total = card1 + card2

end

def hit?(card_total)
  #method adds a card if user input is 'h', doesnt if input is 's', and returns invalid command repsonse if response is neither 'h' or 's'
 prompt_user
 response = get_user_input
 if response =='h'
  card_total += deal_card
 elsif response =='s'
  card_total
 else
  invalid_command
 end

 card_total
end

def invalid_command
  # code invalid_command here
  puts 'Invalid Command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # runner method runs game for user
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end
  end_game(score)
end
    
