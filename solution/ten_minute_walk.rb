# Solution for ten_minute_walk
def valid_walk?(walk)
  return false unless walk.length == 10

  walk_count_hash = walk.tally
  north = walk_count_hash['n'] || 0
  south = walk_count_hash['s'] || 0
  east = walk_count_hash['e'] || 0
  west = walk_count_hash['w'] || 0

  north == south && east == west
end
