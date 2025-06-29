# Solution for alphabet_war
def alphabet_war(reinforces, airstrikes)
  battlefield = reinforces[0].chars
  reinforce_count = reinforces.length
  damage_levels = Array.new(battlefield.length, 0)

  airstrikes.each do |strike|
    indices_to_update = get_blast_radius(strike, battlefield.length)
    indices_to_update.each do |index|
      damage_levels[index] += 1
      current_damage_level = damage_levels[index]

      if current_damage_level < reinforce_count
        new_char = reinforces[current_damage_level][index]
        battlefield[index] = new_char
      else
        battlefield[index] = '_'
      end
    end
  end

  battlefield.join
end

def get_blast_radius(air_strike, max_length)
  blast_position = []
  air_strike.each_char.with_index do |char, index|
    next unless char == '*'

    blast_position << [index - 1, index, index + 1]
  end
  blast_position.flatten.select { |index| index >= 0 && index < max_length }.uniq
end

reinforces = ['abcedfg']
airstrikes = ['*   *  ']

result = alphabet_war(reinforces, airstrikes)
