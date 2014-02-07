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

  def to_s
    "\033[36m#{definition}\033[0m - \033[5m\033[1m\033[32m#{answer}\033[0m"
  end
end

class Deck
  attr_reader :csv_file, :contents
  def initialize#(csv_file)
    #@csv_file = csv_file
    @contents = []
  end

  def populate_contents
    CSV.foreach('flashcard.csv', headers: true, :header_converters => :symbol) do |row|
      add_card(row)
    end
  end

  def change_card_status(card)
    card.has_been_used
    card
  end

  def new_card
    card = contents.select{|card| card.used == false}.sample
    change_card_status(card)
  end

  def add_card(args)
    Card.new(args)
  end

  private
  attr_writer :contents

end

# a bit of testing
questions = [ {definition: "What is your name", answer: "Alex" ,id: "1" },
              {definition: "What is your age", answer: "27" ,id: "2"},
              {definition: "What color is an orange", answer: "orange" ,id: "3"}]

my_deck = Deck.new

my_deck.populate_contents

p my_deck.contents[1].definition
p my_deck.contents[1].answer
puts my_deck.new_card



