require 'dice'

describe Dice do
  it 'returns <n> random numbers from 1 to 6 when rolled <n> times' do
    10.times do
      r = subject.roll(rand(20) + 1)
      r.each { |entry| expect(1..6).to include entry }
    end
  end

  it 'prints the result to the console in the correct format' do
    expect {subject.roll}.to output(/[1-6]/).to_stdout
    expect {subject.roll(7)}.to output(/([1-6], ){6}[1-6]/).to_stdout
    expect {subject.roll(21)}.to output(/([1-6], ){20}[1-6]/).to_stdout
  end
end
