# Solution for weight_to_weight
def order_weight(string)
  numbers = string.split(' ')
  numbers.sort_by { |num_str| [get_weight(num_str.to_i), num_str] }.join(' ')
end

def get_weight(number)
  return 0 if number == 0

  number % 10 + get_weight(number / 10)
end
