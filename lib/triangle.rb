class Triangle
attr_accessor :sideA, :sideB, :sideC, :type

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c
    @type = ""
  end

  def kind
    if self.sideA + self.sideB > self.sideC && self.sideA + self.sideC > self.sideB && self.sideB + self.sideC > self.sideA && self.sideA > 0 && self.sideB > 0 && self.sideC > 0
      if self.sideA == self.sideB && self.sideC == self.sideB
        self.type = "equilateral"
      elsif self.sideA == self.sideB || self.sideA == self.sideC || self.sideB == self.sideC
        self.type = "isoceles"
      elsif self.sideA != self.sideB != self.sideC
        self.type = "scalene"
      end
    else
      raise TriangleError
    end

  end



end

class TriangleError < StandardError

end
