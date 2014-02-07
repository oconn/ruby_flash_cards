require 'csv'


class Card
  attr_accessor :used , :current_card
  attr_reader :definition, :answer,:id
  def initialize(args)
    @id = args[:id]
    @definition = args[:definition]
    @answer = args[:answer]
    @used = false
    @current_card = nil
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
  attr_reader :csv_file, :contents
  def initialize#(csv_file)
    #@csv_file = csv_file
    @contents = []
    populate_contents
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

  def new_card
    self.current_card = contents.select{|card| card.used == false}.sample
    change_card_status(current_card)
  end

  def add_card(args)
    Card.new(args)
  end

  private
  attr_writer :contents
end
