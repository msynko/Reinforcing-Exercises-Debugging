def select_cards(available_cards, hand)

  available_cards.each do |current_card|
    print "Do you want to pick up #{current_card}?"
    answer = gets.chomp
    if answer.downcase == 'y'
      hand << current_card
    end
    if hand.length == 3
      return hand
    end
  end

end


available_cards = ['queen of spades', '2 of clubs', '3 of diamonds', 'jack of spades', 'queen of hearts']

new_hand = select_cards(available_cards, [])

display_hand = new_hand.join("\n")

puts "Your new hand is: \n#{display_hand}"

# Its output should look something like this:
#
# Do you want to pick up queen of spades?y
# Do you want to pick up 2 of clubs?n
# Do you want to pick up 3 of diamonds?n
# Do you want to pick up jack of spades?y
# Do you want to pick up queen of hearts?y
# Your new hand is:
# queen of spades
# jack of spades
# queen of hearts
