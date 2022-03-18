require 'pry'

class Triangle

  attr_reader :side1, :side2, :side3


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (side1 == 0 || side2 == 0 || side3 ==0)
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 != side2 && side1 != side3 && side2 != side3
        :scalene
      else
        :isosceles
      end
    else
      begin
        raise PartnerError
      rescue NoSize => error
        puts error.message
      end
    end
  end


  class NoSize < StandardError
    def message
      "The triangle must have sides"
    end
  end

end
