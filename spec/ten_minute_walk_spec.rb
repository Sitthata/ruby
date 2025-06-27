require_relative '../solution/ten_minute_walk'

describe 'Given a function that receive an array of direction' do
  it 'return true if this walk take 10 minutes' do
    # each walk take 1 mins
    walks = %w[n s n s n s n s n s]
    # have length of ten so it take 10 mins
    result = valid_walk?(walks)
    expect(result).to eq true
  end

  it 'should return true if the walks take back to starting points' do
    walks = %w[n s n s n s n s n s] # walk north 5 times and south 5 times so back to starting point
    expect(valid_walk?(walks)).to eq true
  end

  it "should return false if the walks doesn't take back to starting points" do
    walks = %w[n n n s n s n s n s] # walk north 6 times and s 4 times 2 block left!
    expect(valid_walk?(walks)).to eq false
  end
end
