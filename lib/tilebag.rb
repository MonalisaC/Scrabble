module Scrabble
  class TileBag
    attr_reader :tiles
    def initialize
      @tiles = ["A"] * 9 + ["B"] * 2 + ["C"] * 2 + ["D"] * 4 + ["E"] * 12 + ["F"] * 2 + ["G"] * 3 + ["H"] * 2 + ["I"] * 9 + ["J"] * 1 +["K"] * 1 + ["L"] * 4 + ["M"] * 2 + ["N"] * 6 + ["O"] * 8 + ["P"] * 2 + ["Q"] * 1 +["R"] * 6 + ["S"] * 4 + ["T"] * 6 + ["U"] * 4 + ["V"] * 2 + ["W"] *2 +["X"] * 1 + ["Y"] * 2 + ["Z"] * 1
    end

    def draw_tiles(num)
      raise ArgumentError.new("The num should be Integer") if num.class != Integer
      return @tiles.shuffle!.shift(num)
    end

    def tiles_remaining
      return @tiles.count
    end

  end
end
