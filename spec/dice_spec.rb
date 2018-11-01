require 'dice'

describe Dice do
  it 'returns a random number from 1 to 6 when rolled once' do
    100.times do
      r = subject.roll
      print "#{r}-"
      r.each { |entry| expect(1..6).to include entry }
    end
  end

  it 'returns <n> random numbers from 1 to 6 when rolled <n> times' do
    10.times do
      r = subject.roll(rand(10) + 1)
      print "#{r}-"
      r.each { |entry| expect(1..6).to include entry }
    end
  end
end
