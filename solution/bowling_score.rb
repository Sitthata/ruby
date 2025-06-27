# Solution for bowling_score
def bowling_score(frames)
  total_score = 0
  frames_array = frames.split

  frames_array.each_with_index do |frame, i|
    first_roll, second_roll = get_roll_scores(frame)
    next_frame = frames_array[i + 1]

    next_roll = next_frame ? get_roll_scores(next_frame)[0] : '0'

    total_score += if is_spared?(frame)
                     (10 + next_roll.to_i)
                   else
                     (first_roll.to_i + second_roll.to_i)
                   end
  end
  total_score
end

def is_spared?(frame)
  _, second_roll = get_roll_scores(frame)
  second_roll == '/'
end

def get_roll_scores(frame)
  frame.chars
end
