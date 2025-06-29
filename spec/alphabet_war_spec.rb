# frozen_string_literal: true

require_relative '../solution/alphabet_war'

describe 'alphabet_war function' do
  context 'alphaben_war' do
    it 'should return a final collection of alphabet with no reinforcement' do
      reinforces = ['abcedfg']
      airstrikes = ['   *   ']

      result = alphabet_war(reinforces, airstrikes)
      expect(result).to eq('ab___fg')
    end

    it 'should return a final collection of alphabet with no reinforcement' do
      reinforces = ['abcedfg']
      airstrikes = ['*   *  ']

      result = alphabet_war(reinforces, airstrikes)
      expect(result).to eq('__c__fg')
    end

    it 'should add the reinforcement after the airstrike has landed' do
      reinforces = %w[abcedfg hijklmn]
      airstrikes = ['   *   ']

      result = alphabet_war(reinforces, airstrikes)
      expect(result).to eq('abjklfg')
    end

    it 'should handle multiple series of reinforces and airstrike' do
      reinforces = %w[aaaaa bbbbb ccccc ddddd]
      airstrikes = ['*', ' *', '   ']

      result = alphabet_war(reinforces, airstrikes)
      expect(result).to eq('ccbaa')
    end
  end

  context 'get_blast_radius' do
    it 'should return all blast radius of an airstrike' do
      air_strike = '*     *    *' # each bomb have blast radius of 3
      reinforce =  'aaaaaaaaaaaa' # 12

      result = get_blast_radius(air_strike, reinforce.length)
      expect(result).to eq [0, 1, 5, 6, 7, 10, 11]
    end

    it 'should not return overlapped blast radius' do
      air_strike = '******      ' # each bomb have blast radius of 3
      reinforce =  'aaaaaaaaaaaa' # 12

      result = get_blast_radius(air_strike, reinforce.length)
      expect(result).to eq [0, 1, 2, 3, 4, 5, 6]
    end
  end
end
