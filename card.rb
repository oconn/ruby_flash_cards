class Card
  attr_reader :question, :answer,:id, :used
  def initialize(args)
    @id = args[:id]
    @question = args[:question]
    @answer = args[:answer]
    @used = false
  end
end

class Deck
  attr_reader :csv_file, :contents
  def initialize(csv_file)
    @csv_file = csv_file
    @contents = []
  end

  def populate_contents
    csv_file.each{|args| contents << add_card(args)}
  end

  def add_card(args)
    Card.new(args)
  end

  private
  attr_writer :contents

end

# a bit of testing
# questions = [ {question: "What is your name", answer: "Alex" ,id: "1" },
#               {question: "What is your age", answer: "27" ,id: "2"},
#               {question: "What color is an orange", answer: "orange" ,id: "3"}]

# my_deck = Deck.new(questions)

# my_deck.populate_contents

# p my_deck.contents[1].question
# p my_deck.contents[1].answer



