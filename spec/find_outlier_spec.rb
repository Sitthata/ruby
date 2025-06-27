# Test file for find_outlier
require_relative '../solution/find_outlier'

describe 'find_outlier method which receive an array containing entirely odd or even number except for single integer' do
  it 'given an array consists of even numbers it should return the only odd number exist in this array' do
    # Given
    even_array = [2, 4, 0, 100, 4, 11, 2602, 36]

    result = 11

    expect(find_outlier(even_array)).to eq result
  end

  it 'given an array consists of odd numbers this time it should return the only even number in this array' do
    odd_array = [160, 3, 1719, 19, 11, 13, -21]

    result = 160

    expect(find_outlier(odd_array)).to eq result
  end
end
