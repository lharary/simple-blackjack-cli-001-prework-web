def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11)+1
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1+card2)
  total = card1 + card2

end

def hit?(card_total)
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
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  puts "Welcome to the Blackjack Table"
  puts "Type 'h' to hit or 's' to stay"
  welcome
  score = initial_round
  until score > 21
    score = hit?(score)
    display_card_total(score)
  end
  
  
  end_game(score)

end
    
