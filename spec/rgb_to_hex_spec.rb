# Test file for rgb_to_hex
require_relative '../solution/rgb_to_hex'

describe 'given a rgb function which receive 3 params red, green, blue' do
  it 'it convert the red values to first 2 hex' do
    red_value = 148 # base 10
    result = get_hex red_value
    # hex 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, and then A, B, C, D, E, F
    expected = '94' # 255 % 16 = 15 (F) reminder 15 (F)
    expect(result).to eq expected
  end

  it 'Convert the r,g,b into hex value' do
    r = 173
    g = 255
    b = 47
    expected = 'ADFF2F'
    result = rgb(r, g, b)
    expect(result).to eq expected
  end

  it 'Should handle case where value is negetive or more than 255' do
    r = -20
    g = 300
    b = 300
    expected = '00FFFF'
    result = rgb(r, g, b)
    expect(result).to eq expected
  end
end
