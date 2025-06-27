def spin_words(sentence)
  words = sentence.split
  words.map { |word| word.reverse! if word.length > 5 }
  words.join(' ')
end
