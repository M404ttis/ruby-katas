require "level_3_blocks/03_lambdas"

describe "Level 3.3 – Lambdas" do
  let(:inc) { ->(x) { x + 1 } }

  it "SQUARE squares" do
    expect(SQUARE.lambda?).to eq true
    expect(SQUARE.call(4)).to eq 16
    expect(SQUARE.(5)).to eq 25
    expect(SQUARE[3]).to eq 9
  end

  it "lambdas are strict about arguments" do
    expect { SQUARE.call(1, 2) }.to raise_error(ArgumentError)
    expect { SQUARE.call }.to raise_error(ArgumentError)
  end

  it "ADD adds two numbers" do
    expect(ADD.lambda?).to eq true
    expect(ADD.call(2, 3)).to eq 5
    expect { ADD.call(1) }.to raise_error(ArgumentError)
  end

  it "LONG_ENOUGH returns early inside the lambda" do
    expect(LONG_ENOUGH.call("abc")).to eq true
    expect(LONG_ENOUGH.call("ab")).to eq false
    expect(LONG_ENOUGH.call(nil)).to eq false
  end

  it "make_counter keeps private state per counter" do
    a = make_counter
    b = make_counter
    expect(a.call).to eq 1
    expect(a.call).to eq 2
    expect(a.call).to eq 3
    expect(b.call).to eq 1
  end

  it "compose applies g first, then f" do
    expect(compose(SQUARE, inc).call(3)).to eq 16
    expect(compose(inc, SQUARE).call(3)).to eq 10
  end

  it "lambda_from_method wraps a method" do
    fn = lambda_from_method
    expect(fn.lambda?).to eq true
    expect(fn.call(4)).to eq 8
    expect([1, 2, 3].map(&fn)).to eq [2, 4, 6]
  end

  it "find_first uses the lambda as a test" do
    expect(find_first([1, 2, 3, 4], ->(x) { x > 2 })).to eq 3
    expect(find_first([1, 2], ->(x) { x > 5 })).to be_nil
  end
end
