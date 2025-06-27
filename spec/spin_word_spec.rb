require_relative '../solution/spin_word'

describe 'spin word is a function which receive a sentence with words' do
  it 'given a string with 5 or more letters it will reverse the string' do
    input = 'fellow'
    result = 'wollef'

    expect(spin_word(input)).to eq result
  end

  it "given a string with less than 5 letters it shouldn't reverse the string" do
    input = 'test'
    result = 'test'
    expect(spin_word(input)).to eq result
  end

  it 'given a sentence with 2 word with 5 or more letter it should reverse all word in the sentence' do
    input = 'This is another test'
    result = 'This is rehtona test'
    expect(spin_word(input)).to eq result
  end
end
