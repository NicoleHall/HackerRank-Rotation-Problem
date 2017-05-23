class Rotation

  def initialize(length, num_of_left_rotations)
    @length = length
    @num_of_left_rotations = num_of_left_rotations
  end

  def make_array
    (1..@length).to_a
  end

  def left_rotation
    make_array.rotate(@num_of_left_rotations)
  end

end
