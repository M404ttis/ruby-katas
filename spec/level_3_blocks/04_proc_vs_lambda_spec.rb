require "level_3_blocks/04_proc_vs_lambda"

describe "Level 3.4 – Proc vs lambda" do
  let(:add_one) { ->(x) { x + 1 } }
  let(:double) { proc { |x| x * 2 } }

  it "callable_kind tells procs and lambdas apart" do
    expect(callable_kind(add_one)).to eq :lambda
    expect(callable_kind(double)).to eq :proc
    expect(callable_kind(Proc.new { })).to eq :proc
  end

  it "call_safely absorbs wrong argument counts of lambdas" do
    expect(call_safely(add_one, 1)).to eq 2
    expect(call_safely(add_one, 1, 2)).to eq :wrong_arguments
    expect(call_safely(add_one)).to eq :wrong_arguments
  end

  it "call_safely lets lenient procs through" do
    expect(call_safely(double, 4, "ignored")).to eq 8
    expect(call_safely(proc { |a, b| [a, b] }, 1)).to eq [1, nil]
  end

  it "pipeline threads a value through any mix of callables" do
    expect(pipeline(add_one, double, :to_s.to_proc).call(3)).to eq "8"
    expect(pipeline(method(:Integer), add_one).call("41")).to eq 42
    expect(pipeline.call(7)).to eq 7
  end

  it "pipeline returns a lambda" do
    expect(pipeline(add_one).lambda?).to eq true
  end

  it "memoize runs the wrapped function once per argument" do
    calls = []
    slow_square = ->(x) { calls << x; x * x }
    fast = memoize(slow_square)

    expect(fast.call(4)).to eq 16
    expect(fast.call(4)).to eq 16
    expect(fast.call(5)).to eq 25
    expect(calls).to eq [4, 5]
  end

  it "your predictions about `return` match reality" do
    expect(PREDICTIONS[:proc_return_demo]).to eq proc_return_demo
    expect(PREDICTIONS[:lambda_return_demo]).to eq lambda_return_demo
  end
end
