require_relative '../solution/calculate_function'

describe 'test' do
  it 'when call number function without operator will return the number itself' do
    expect(one).to eq 1
  end

  it "given 'plus' should receive a number function and process them" do
    expect(one(plus(one))).to eq 2
  end

  it 'test' do
    expect(two(times(two))).to eq 4
  end
end
