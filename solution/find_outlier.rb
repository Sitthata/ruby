# Solution for find_outlier
def find_outlier(integers)
  selected_odd_num = integers.select { |num| num.odd? }

  return selected_odd_num.first if selected_odd_num.length == 1

  selected_even_num = integers.select { |num| num.even? }
  selected_even_num.first
end
