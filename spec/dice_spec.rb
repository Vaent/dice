require 'dice'

describe(Dice) do
  it { expect(1..6).to include subject.roll }
end
