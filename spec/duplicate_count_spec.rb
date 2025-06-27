require_relative '../solution/duplicate_count'

describe 'duplicate count function' do
  it "given 'abcde' should return 0 because no characters repeats more than once" do
    input_string = 'abcde'
    result = 0

    expect(duplicate_count(input_string)).to eq(result)
  end

  it "given 'aabbcde' this should return 2 because 'a' and 'b' appear more than once" do
    input_string = 'aabbcde' # 'a' and 'b'
    result = 2

    expect(duplicate_count(input_string)).to eq(result)
  end

  it "given 'aabBcde' this should also return 2 because it case insensitive" do
    input_string = 'aabBcde' # 'a' and 'b'
    result = 2

    expect(duplicate_count(input_string)).to eq(result)
  end
end
