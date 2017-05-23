require "./left_rotation.rb"
require 'minitest/autorun'
require 'minitest/pride'

class RotationTest < Minitest::Test
  def test_it_produces_an_array_that_is_the_length_of_the_first_agrument
    array_with_5_elements = Rotation.new(5, 1).make_array
    assert_equal([1, 2, 3, 4, 5], array_with_5_elements)
  end

  def test_it_does_left_rotation
    array_shifted_1_element_to_the_left = Rotation.new(5, 1).left_rotation
    assert_equal([2, 3, 4, 5, 1], array_shifted_1_element_to_the_left)
  end

  def test_it_does_left_rotation_on_values_greater_than_one
    array_shifted_4_elements_to_the_left = Rotation.new(5, 4).left_rotation
    assert_equal([5, 1, 2, 3, 4], array_shifted_4_elements_to_the_left)
  end

  def test_array_goes_back_to_orginal_when_length_and_rotations_are_equal
    rotations_and_length_are_the_same = Rotation.new(5, 5).left_rotation
    assert_equal([1, 2, 3, 4, 5], rotations_and_length_are_the_same)
  end

end
