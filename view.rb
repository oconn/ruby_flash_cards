require 'rainbow'

class View


#HERE.DOC TO RULE ALL THE FORMATTING!
# <<-STRING




# STRING

  def greet
    puts "Welcome to Ruby Flashcards!!"
    puts Rainbow(
<<-STRING
\033[36m
___________________________________  __
___  ____/__  /___    |_  ___/__  / / /
__  /_   __  / __  /| |____ \\__  /_/ /
_  __/   _  /___  ___ |___/ /_  __  /
/_/      /_____/_/  |_/____/ /_/ /_/

____________________________________________
__  ____/__    |__  __ \\__  __ \\_  ___/__  /
_  /    __  /| |_  /_/ /_  / / /____ \\__  /
/ /___  _  ___ |  _, _/_  /_/ /____/ / /_/
\\____/  /_/  |_/_/ |_| /_____/ /____/ (_)\033[0m
STRING
).blink
    puts "play it okay"

  end

  def show_definition(definition)
    puts definition
<<-STRING

#{definition}


STRING
  end

  def get_input
    gets.chomp
  end

  def correct_answer
    puts "yay you did it"
<<-STRING

correct
STRING
  end

  def incorrect_answer
    puts "incorrect try again"
<<-STRING

incorrect
STRING
  end
end
