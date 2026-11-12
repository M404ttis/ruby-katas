require "level_3_blocks/02_procs"

describe "Level 3.2 – Procs" do
  it "make_multiplier returns a closure Proc" do
    double = make_multiplier(2)
    triple = make_multiplier(3)
    expect(double).to be_a Proc
    expect(double.lambda?).to eq false
    expect(double.call(4)).to eq 8
    expect(double.(5)).to eq 10
    expect(triple[4]).to eq 12
  end

  it "lenient_pair forgives wrong argument counts" do
    pr = lenient_pair
    expect(pr.call(1, 2)).to eq [1, 2]
    expect(pr.call(1)).to eq [1, nil]
    expect(pr.call(1, 2, 3)).to eq [1, 2]
    expect(pr.call([5, 6])).to eq [5, 6]
  end

  it "block_arity reports the expected parameter count" do
    expect(block_arity { |a, b| }).to eq 2
    expect(block_arity { }).to eq 0
    expect(block_arity { |*args| }).to eq(-1)
  end

  it "first_negative_index returns from the method inside the block" do
    expect(first_negative_index([3, 5, -1, -7])).to eq 2
    expect(first_negative_index([1, 2, 3])).to be_nil
    expect(first_negative_index([])).to be_nil
  end

  it "compose_procs applies f then g" do
    add_one = proc { |x| x + 1 }
    double = proc { |x| x * 2 }
    expect(compose_procs(add_one, double).call(3)).to eq 8
    expect(compose_procs(double, add_one).call(3)).to eq 7
  end

  it "apply_all collects results" do
    double = proc { |x| x * 2 }
    square = proc { |x| x * x }
    expect(apply_all([double, square], 3)).to eq [6, 9]
    expect(apply_all([], 3)).to eq []
  end

  it "map_with_proc turns the Proc into a block" do
    expect(map_with_proc([1, 2, 3], proc { |x| x * 3 })).to eq [3, 6, 9]
  end

  it "make_curried_sum can be called step by step" do
    sum = make_curried_sum
    expect(sum.call(1).call(2).call(3)).to eq 6
    expect(sum.(1, 2).(3)).to eq 6
    expect(sum.(1).(2, 3)).to eq 6
  end
end
