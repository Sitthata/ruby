# Test file for weight_to_weight
require_relative '../solution/weight_to_weight'

describe 'given a order weight function which receive a string of weight' do
  it 'get weight' do
    expect(get_weight(123)).to eq 6
  end
  it 'order the weight of the number according to it digits' do
    first = 99 # weight is 9 + 9 = 18
    second = 100 # weight is 1 + 0 + 0 = 1
    given = "#{first} #{second}"
    expected = '100 99' # because weight of 100 come before 99
    result = order_weight(given)

    expect(result).to eq expected
  end

  it 'sort the number by string alphabetical ordering if weight is the same' do
    given = '2000 10003 1234000 44444444 9999 11 11 22 123'
    expected = '11 11 2000 10003 22 123 1234000 44444444 9999'
    result = order_weight(given)
    expect(result).to eq expected
  end
end
