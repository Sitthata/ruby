# Solution for narcissistic
def narcissistic?(value)
  digits_array = value.to_s.chars.map { |digit| digit.to_i }
  calc_value = 0
  digits_array.each do |digit|
    calc_value += digit**digits_array.length
  end
  calc_value == value
end
