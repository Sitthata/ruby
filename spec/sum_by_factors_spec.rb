# Test file for sum_by_factors
require_relative '../solution/sum_by_factors'

describe 'test' do
  context 'given a find factors function which receive a number' do
    it 'should return all prime factors in array' do
      number = 84
      expected = [2, 3, 7]
      result = get_prime_factors(number)

      expect(result).to eq expected
    end
  end
end
