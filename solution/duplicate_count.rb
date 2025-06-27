def duplicate_count(text)
  char_array = text.downcase.chars
  occurrence_hash = char_array.tally

  duplicate_count = 0

  occurrence_hash.each do |_key, value|
    duplicate_count += 1 if value > 1
  end

  duplicate_count
end
