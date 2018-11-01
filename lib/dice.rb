class Dice
  def roll(num = 1)
    results = Array.new(num)
    num.times { results << single_roll }
    results
  end

  private

  def single_roll
    rand(6) + 1
  end
end
