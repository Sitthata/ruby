# Test file for bowling_score
require_relative '../solution/bowling_score'

describe 'bowling score function' do
  it 'should calculate 10 frames with regular score correctly' do
    # Given
    frames = '11 11 11 11 11 11 11 11 11 11' # 10 frame with 2 score each

    result = 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2 + 2
    expect(bowling_score(frames)).to eq result
  end

  it 'should calculate a spare score correctly' do
    frames = '9/ 54'
    result = (10 + 5) + (5 + 4) # spare score + next roll

    expect(bowling_score(frames)).to eq result
  end
end
