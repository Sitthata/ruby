# Test file for move_zero
require_relative '../solution/move_zero'

describe 'a move zeros method should move all zeros to the end of an array' do
  it 'it move all zero to the end of array' do
    given = [1, 2, 0, 1, 0, 1, 0, 3, 0, 1]
    expected = [1, 2, 1, 1, 3, 1, 0, 0, 0, 0]
    result = move_zeros(given)
    expect(result).to eq expected
  end
end
1_211_310_000
