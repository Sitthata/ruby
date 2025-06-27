def top_3_words(text)
  cleaned_text = clean_text(text)
  word_hash = get_occurance_hash(cleaned_text).sort_by { |_word, count| -count }
  result = word_hash.map(&:first)
  result[0...3]
end

def clean_text(text)
  text = text.gsub(%r{[#\\/.,]}, ' ')
  text.gsub(/(?<!\w)'(?!\w)/, ' ')
end

def get_occurance_hash(text)
  # Can use ruby built in text.split.tally got the same result
  word_hash = {}
  text.downcase.split.each do |word|
    if word_hash[word]
      word_hash[word] += 1
    else
      word_hash[word] = 1
    end
  end
  word_hash
end
