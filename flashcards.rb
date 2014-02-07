# Main file for

class Controller

  def initialize
    @deck = Deck.new
    @view = View.new
    @input = ""
    @current_answer = nil
  end

  def run!
    view.greet
    show_flashcard
  end

  private

  def show_flashcard
    give_definition
    parse_user_input
  end

  def give_definition
    new_card = deck.new_card
    self.current_answer = new_card.answer
    view.show_definition(new_card.definition)
  end

  def parse_user_input
    self.input = view.get_input
    if input == "exit"
      break
    else
      check_answer
    end
  end

  def check_answer
    if current_answer == user_input
      view.correct_answer
      show_flashcard
    else
      view.incorrent_answer
      parse_input
    end
  end

  attr_reader :deck, :view
  attr_accessor :input, :current_answer
end

Controller.new.run!


