require 'dice'

describe(Dice) do
  it { expect(subject).to respond_to(:roll) }
end
