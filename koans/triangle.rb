# frozen_string_literal: true

# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(first, second, third)
  first_s, second_s, third_s = [first, second, third].sort
  if (first_s + second_s + third_s).positive?
    raise TriangleError if first_s + second_s <= third_s

    get_figure(first, second, third)
  else
    raise TriangleError
  end
end

def get_figure(first, second, third)
  if first == second && second == third
    :equilateral
  elsif first != third && second != third && first != second
    :scalene
  else
    :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
