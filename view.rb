require 'rainbow'

class View


#HERE.DOC TO RULE ALL THE FORMATTING!
<<-STRING




STRING

  def greet
    puts "Welcome to Ruby Flashcards!!"
    puts Rainbow(
<<-STRING
___________________________________  __
___  ____/__  /___    |_  ___/__  / / /
__  /_   __  / __  /| |____ \\__  /_/ /
_  __/   _  /___  ___ |___/ /_  __  /
/_/      /_____/_/  |_/____/ /_/ /_/

____________________________________________
__  ____/__    |__  __ \\__  __ \\_  ___/__  /
_  /    __  /| |_  /_/ /_  / / /____ \\__  /
/ /___  _  ___ |  _, _/_  /_/ /____/ / /_/
\\____/  /_/  |_/_/ |_| /_____/ /____/ (_)
STRING
).blink
    puts "Press enter to play!"

  end

  def show_definition(definition)
<<-STRING




STRING
  end

  def get_input

  end

  def correct_answer
<<-STRING


STRING
  end

  def incorrect_answer
<<-STRING


STRING
  end
end

view = View.new
 view.greet
