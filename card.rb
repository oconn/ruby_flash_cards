class Card
  attr_reader :question, :reader,:id
  def initialize(args)
    @id = args[:id]
    @question = args[:question]
    @answer = args[:answer]
  end
end

class Deck
  attr_reader :file_name
  def initialize(file_name)
    @file_name = file_name
    @contents = []
  end

  def parse_file
    #CSV.foreach{}
  end

  def add_card(args)
    Card.new(args)
  end
end





