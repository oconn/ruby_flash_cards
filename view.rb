require 'rainbow'

class View

  def greet
    puts "Welcome to Ruby Flashcards!!"
    puts (
<<-STRING
\033[1m\033[36m\033[5m
___________________________________  __
___  ____/__  /___    |_  ___/__  / / /
__  /_   __  / __  /| |____ \\__  /_/ /
_  __/   _  /___  ___ |___/ /_  __  /
/_/      /_____/_/  |_/____/ /_/ /_/\033[32m
____________________________________________
__  ____/__    |__  __ \\__  __ \\_  ___/__  /
_  /    __  /| |_  /_/ /_  / / /____ \\__  /
/ /___  _  ___ |  _, _/_  /_/ /____/ / /_/
\\____/  /_/  |_/_/ |_| /_____/ /____/ (_)\033[0m


STRING
)
    puts "We'll be showing you definitions of ruby terms, and it's up to you to figure out the term we're describing.  Enter a term after we give the definition, or say 'exit' at any time to quit the program.  Good luck!\n "
  end

  def show_definition(definition, card_counter)
    print "Card Number #{card_counter}:  \n\n#{definition}\n\nYour guess: "
  end

  def get_input
    gets.chomp
  end

  def correct_answer
    puts <<-STRING
\033[32m
Awwwww yisssssss!  You are CORRECT!!!\033[0m

STRING
  end

  def incorrect_answer
    puts <<-STRING
\033[31m
Yikes!  That's a no-go.  Got another guess?\033[0m

STRING
  end
end
