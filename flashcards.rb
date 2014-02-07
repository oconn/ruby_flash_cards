require_relative 'card'
require_relative 'view'

class Controller
  attr_accessor :card_counter, :correct_answer_counter

  def initialize
    @deck = Deck.new
    @view = View.new
    @input = ""
    @current_answer = nil
    @card_counter = 0
    @correct_answer_counter = 0
  end

  def run!
    view.greet
    show_flashcard
  end

  private

  def show_flashcard
    self.card_counter += 1
    give_definition
    parse_user_input
  end

  def give_definition
    new_card = deck.new_card
    self.current_answer = new_card.answer
    view.show_definition(new_card, card_counter)
  end

  def parse_user_input
    self.input = view.get_input
    if input == "exit"
      exit_game
    elsif input == "skip"
      view.skip_card
      show_flashcard
    else
      check_answer
    end
  end

  def check_answer
    if current_answer == input
      self.correct_answer_counter += 1
      view.correct_answer
      show_flashcard
    else
      view.incorrect_answer
      parse_user_input
    end
  end

  attr_reader :deck, :view
  attr_accessor :input, :current_answer
end

Controller.new.run!


