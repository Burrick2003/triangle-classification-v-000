class Triangle
attr_accessor :sideA, :sideB, :sideC, :type

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c
    @type = ""
  end

  def kind

    if self.sideA == self.sideB == self.sideC
      self.type = "equilateral"
    elsif self.sideA == self.sideB || self.sideA == self.sideC || self.sideB == self.sideC
      self.type = "isoceles"
    elseif self.sideA != self.sideB != self.sideC
      self.type = "scalene"
    end
  end



end

class TriangleError < StandardError

end
