# DRIVER CODE

require_relative 'flashcards'



# questions = [ {definition: "What is your name", answer: "Alex" ,id: "1" },
#               {definition: "What is your age", answer: "27" ,id: "2"},
#               {definition: "What color is an orange", answer: "orange" ,id: "3"}]

# my_deck = Deck.new

# my_deck.populate_contents

# p my_deck.contents[1].definition
# p my_deck.contents[1].answer
# puts my_deck.new_card


# view = View.new
#  view.greet

game = Controller.new
game.run!
