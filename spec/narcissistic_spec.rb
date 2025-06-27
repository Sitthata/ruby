# Test file for narcissistic
require_relative '../solution/narcissistic'

describe 'narcissistic number given a value it must check if that value is a Armstrong number or not and return a boolean value' do
  it "given '5' a small number which is narcissistic should return true" do
    value = 5**1 # take it digits and power by digit counts

    expect(narcissistic?(value)).to be(true)
  end

  it "given '153' a small number which is narcissistic should return true" do
    value = 1**3 + 5**3 + 3**3 # take it digits and power by digit counts

    expect(narcissistic?(value)).to be(true)
  end

  # it "test" do
  #   expect(narcissistic?(1652)).to be(false)
  # end
end
