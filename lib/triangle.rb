class Triangle
  attr_accessor :sides

  @sides = []

  def initialize(a, b, c)
    @sides = [a, b, c]
    @sides.sort!
  end

  def kind
    if @sides.any?{|side| side <= 0} || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end

# class Triangle
#   attr_accessor :a, :b, :c
  
#   def initialize(a, b, c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     if @a + @b < @c || @a + @c < @b || @b + @c = @a
#     raise TriangleError
#     elsif @a > 0 && @b > 0 && @c > 0
#       if @a == @b && @b == @c
#         :equilateral
#       elsif @a != @b && @b != @c && @a != @c
#         :scalene
#       else
#         :isosceles
#       end

#     else
#       raise TriangleError
#     end
#   end

#   class TriangleError < StandardError
#   end
# end
