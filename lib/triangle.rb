class Triangle
  # write code here
  attr_accessor :l1, :l2, :l3;
  def initialize (l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end
  def kind
    sum = l1 + l2
    if (sum < l3 || l1 === 0 || l2 === 0 || l2 ===0)
      begin
        raise TriangleError => error
      rescue TriangleError
        puts TriangleError.message
      end
    else
      if (l1 === l2 && l1 === l3 && l3 === l2)
        return :equilateral
      end
    end
  end
  class TriangleError < StandardError
    def message
      "Bad Triangle"
    end
  end
end
