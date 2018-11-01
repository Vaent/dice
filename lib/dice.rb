class Dice
  def roll(num = 1)
    results = []
    num.times { results << single_roll }
    puts results.join(", ")
    results
  end

  private

  def single_roll
    rand(6) + 1
  end
end
