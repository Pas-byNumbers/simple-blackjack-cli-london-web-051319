def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  deal_card
  deal_card
  display_card_total(card_total = deal_card + deal_card)
  return card_total
  
end

def hit?(card_total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    card_total
    elsif user_input == "h"
    card_total += deal_card
  else
    invalid_command
 end
  
  
end

def invalid_command
  # code invalid_command here
  puts "That is not a valid command, try again"
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  until card_total > 21
  hit?
  display_card_total
end
end_game
  
end
    
