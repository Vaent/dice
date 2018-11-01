class Dice
  def roll(num = 1)
    results = roll_the_dice(num)
    puts results.join(", ")
    results
  end

  private

  def roll_the_dice(num)
    results = []
    num.times { results << single_roll }
    results
  end

  def single_roll
    rand(6) + 1
  end
end
