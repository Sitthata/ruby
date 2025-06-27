# Solution for rgb_to_hex
def rgb(r, g, b)
  [get_hex(r), get_hex(g), get_hex(b)].join('')
end

def get_hex(value)
  return 'FF' if value > 255
  return '00' if value < 0

  first = value / 16
  second = value % 16
  puts first
  puts second

  [get_string(first), get_string(second)].join('')
end

def get_string(value)
  hex_hash = { 10 => 'A', 11 => 'B', 12 => 'C', 13 => 'D', 14 => 'E', 15 => 'F' }
  hex_hash[value] || value
end
