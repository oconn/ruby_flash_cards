# Main file for

class Controller

  def initialize
    @deck = Deck.new
    @view = View.new
    @input = ""
  end

  def run!
    view.greet
    view.give_definition
    self.input = view.get_input
  end

end




get input
if they want to exit, exit
  otherwise, check their answer
  return true or false
    tell them hooray or guess again
