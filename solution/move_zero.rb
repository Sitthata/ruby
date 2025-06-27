# Solution for move_zero
def move_zeros(arr)
  zeros = arr.select { |num| num == 0 }
  result = arr.select { |num| num != 0 }
  zeros.each { |zero| result << zero }
  result
end
