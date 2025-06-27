# Test file for frequently_used_word
require_relative '../solution/frequently_used_word'

describe 'given a top 3 words method which receive a sentence string and return array of top 3 words' do
  it 'return the top 3 frequently used words in a string' do
    given = 'e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e'
    expected = %w[e ddd aa]
    result = top_3_words(given)
    expect(result).to eq expected
  end

  it 'should return empty array if the string is empty' do
    example1 = ''
    example2 = "  '''  "
    result1 = top_3_words(example1)
    result2 = top_3_words(example2)

    expect(result1).to eq []
    expect(result2).to eq []
  end
end
