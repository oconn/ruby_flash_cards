class Card
  attr_reader :question, :reader,:id
  def initialize(args)
    @id = args[:id]
    @question = args[:question]
    @answer = args[:answer]
  end
end

class Deck
  attr_reader :csv_file
  def initialize(csv_file)
    @csv_file = csv_file
    @contents = []
  end

  def parse_file
    csv_file.each{|args| contents << add_card(args)}
  end

  def add_card(args)
    Card.new(args)
  end

  private
  attr_accessor :contents

end





