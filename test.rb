module Enumerable
  def my_each_cons(num)
    return nil if num <= 0

    collection = to_a

    return nil if num > collection.length

    (0..collection.length - num).each do |i|
      slice = collection[i, num]
      yield slice
    end

    self
  end
end

arr = [1, 2, 3, 4, 5]

arr.my_each_cons(2) do |pair|
  puts pair.inspect
end
