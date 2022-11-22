class Board
  def initialize(size=3)
    @grid = Array.new(size) {Array.new(size)}
    @card_1 = Card.new
    @card_2 = Card.new
  end

  def populate
    values = rand(0..9).
    (@grid.length / 2).times
  end

end
