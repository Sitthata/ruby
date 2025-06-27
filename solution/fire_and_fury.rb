# Solution for fire_and_fury
arr = %w[FIRE FURY FURY FURY FIRE FIRE FURY]

arr.each_cons(3) do |triplet|
  puts triplet.inspect
end
