require 'dice'

describe Dice do
  it 'returns a random number from 1 to 6' do
    100.times do
      r = subject.roll
      print "#{r}-"
      expect(1..6).to include r
    end
  end
  it { expect(subject).to respond_to(:roll).with(1).argument }
end
