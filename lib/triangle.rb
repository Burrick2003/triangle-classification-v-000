class Triangle
attr_accessor :sideA, :sideB, :sideC

  def initialize(a, b, c)
    @sideA = a
    @sideB = b
    @sideC = c
    @type = ""
  end

  def kind

    if self.sideA = self.sideB == self.sideC
      self.type = "equilateral"
  end



end

class TriangleError < StandardError

end
