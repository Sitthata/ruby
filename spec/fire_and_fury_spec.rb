require_relative '../solution/fire_and_fury'

describe 'Fire and Fury that recieve string and convert to known meaning.' do
  context 'Given function that receive string and extract the string into array of string' do
    it 'extract tweet "FURY" and "FIRE" and return an array' do
      tweet = 'FURYYYFIRE'
      expected_result = %w[FURY FIRE]
      result = extract(tweet)
      expect(result).to eq(expected_result)
    end

    it 'extract tweet "FURY" and "FIRE" and return an array' do
      tweet = 'FURYYYFIREYYFIREFIREFURY'
      expected_result = %w[FURY FIRE FIRE FIRE FURY]
      result = extract(tweet)
      expect(result).to eq(expected_result)
    end
  end
end
