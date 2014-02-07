require 'csv'


class Card
  attr_accessor :used
  attr_reader :definition, :answer,:id
  def initialize(args)
    @id = args[:id]
    @definition = args[:definition]
    @answer = args[:answer]
    @used = false
  end

  def has_been_used
    self.used = true
  end

  def skipped
    self.used = false
  end

  def to_s
    "\033[36m#{definition}\033[0m"
  end
end

class Deck
  attr_accessor :current_card
  attr_reader :csv_file, :contents
  def initialize
    @contents = []
    populate_contents
    @current_card = nil
  end

  def populate_contents
    CSV.foreach('flashcard.csv', headers: true, :header_converters => :symbol) do |row|
      self.contents << add_card(row)
    end
  end

  def put_back_in_deck
    current_card.skipped
  end

  def change_card_status(card)
    card.has_been_used
    card
  end

  def size
    contents.length
  end

  def new_card
    return "empty" if available_cards.empty?
    self.current_card = available_cards.sample
    change_card_status(current_card)
  end

  def available_cards
    contents.select{|card| card.used == false}
  end

  def add_card(args)
    Card.new(args)
  end

  private
  attr_writer :contents
end
