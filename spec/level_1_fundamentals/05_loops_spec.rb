require "level_1_fundamentals/05_loops"

describe "Level 1.5 – Loops" do
  it "sum_to adds 1..n" do
    expect(sum_to(4)).to eq 10
    expect(sum_to(100)).to eq 5050
    expect(sum_to(0)).to eq 0
  end

  it "countdown counts down to 1" do
    expect(countdown(3)).to eq [3, 2, 1]
    expect(countdown(1)).to eq [1]
    expect(countdown(0)).to eq []
  end

  it "multiples_of lists multiples up to the limit" do
    expect(multiples_of(3, 10)).to eq [3, 6, 9]
    expect(multiples_of(5, 5)).to eq [5]
    expect(multiples_of(7, 6)).to eq []
  end

  it "next_power_of_two finds the next power strictly above n" do
    expect(next_power_of_two(0)).to eq 1
    expect(next_power_of_two(1)).to eq 2
    expect(next_power_of_two(8)).to eq 16
    expect(next_power_of_two(100)).to eq 128
  end

  it "sum_of_odds skips even numbers" do
    expect(sum_of_odds([1, 2, 3, 4, 5])).to eq 9
    expect(sum_of_odds([2, 4])).to eq 0
    expect(sum_of_odds([])).to eq 0
  end

  it "times_table returns the first ten multiples" do
    expect(times_table(3)).to eq [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    expect(times_table(1)).to eq((1..10).to_a)
  end

  it "collatz_steps counts steps to reach 1" do
    expect(collatz_steps(1)).to eq 0
    expect(collatz_steps(6)).to eq 8
    expect(collatz_steps(27)).to eq 111
  end
end
