class Triangle
  attr_accessor :side_1, :side_2, :side_3, :total
  def initialize(side_1, side_2, side_3)
    self.side_1, self.side_2, self.side_3 = side_1, side_2, side_3
    self.total = side_1 + side_2 + side_3
  end

  def kind
    if !(@side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0) && @total.to_f/2 > side_1 && @total.to_f/2 > side_2 && @total.to_f/2 > side_3
      return :equilateral if @side_1 == @side_2 && @side_1 == @side_3 && @side_1 != 0
      return :isosceles if @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      return :scalene if @side_1 != @side_2 || @side_1 != @side_3 || @side_2 != @side_3
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "ouch"
    end
  end
end
