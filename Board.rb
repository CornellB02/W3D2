class Board
  def initialize(size=4)
    @grid = Array.new(size) {Array.new(size)}
    @card_1 = Card.new
    @card_2 = Card.new
  end

  # def populate
  #   values = rand(0..9).
  #   (@grid.length / 2).times
  # end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def []=(position, mark)
    row, col = position
    @grid[row][col] = mark 
  end


  # def populate
  #   card_pairs = card_values.map do |val|
  #     card = Card.new(val)
  #     [card, card]
  #   end

  #   counter = 0 # [:S, :S]
  #   while counter < @size * 2
  #     rp_1 = rand_pos
  #     rp_2 = rand_pos
  #     next if rp_1 == rp_2
  #     row_1, col_1 = rp_1 # TODO: Fixed
  #     row_2, col_2 = rp_2 # TODO: Fixed

  #     if self[[row_1, col_1]] == nil && self[[row_2, col_2]] == nil
  #       card_1, card_2 = card_pairs.pop
  #       self[[row_1, col_1]] = card_1  # card_pairs[0] # => [:S, :S]
  #       self[[row_2, col_2]] = card_2
  #       counter += 1

  #     end

  #   end

  # end

  def populate
    alphabet_whatever = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    remaining_pairs = @size / 2  #amount of pairs we need on the grid 
    max = @grid.length #length of the grid 
    card_placed = 0 # number of cards out of the pair to be placed on the grid 

    while remaining_pairs > 0  
        current_card = alphabet_whatever[rand(alphabet_whatever.length)] # choosing a random alpha from var  J
        alphabet_whatever.delete(current_card) #assign that alpha to empty string  ""
        puts "current card" + current_card.to_s # puts "current_card"
        while card_placed < 2 #while the pair(of 2) cards is less that two on the grid 
            samp_row, samp_col = rand(max), rand(max) #init a random row and col
        
            if @grid[samp_row][samp_col].cheat == nil 
                # puts "row, col" + samp_row.to_s + samp_col.to_s
                @grid[samp_row][samp_col] = Card.new(current_card)
                card_placed += 1
                # puts "card placed" + card_placed.to_s
            end
        end
        remaining_pairs -= 1 
        puts "remaining pairs" + remaining_pairs.to_s
        card_placed = 0
    end
  end


  #get a randomize value/char
  #count the pairs we need
  #get a random positoin for the value, assign a card instance to that position, do this one more time

  def populate
    alphabet = ("A".."Z").to_a
    value = alphabet.sample
    #value = alphabet.sample

    
    row, col = rand(0..@grid.length), rand(0..@grid.legnth)

    (0...@grid.length).each do |i|
      @grid[i][i]

  end


  

  


end
