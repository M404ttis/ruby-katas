require "level_1_fundamentals/04_case"

describe "Level 1.4 – case / when" do
  it "letter_grade maps ranges to letters" do
    expect(letter_grade(100)).to eq "A"
    expect(letter_grade(90)).to eq "A"
    expect(letter_grade(89)).to eq "B"
    expect(letter_grade(75)).to eq "C"
    expect(letter_grade(60)).to eq "D"
    expect(letter_grade(59)).to eq "F"
    expect(letter_grade(0)).to eq "F"
  end

  it "describe_type matches by class" do
    expect(describe_type(1)).to eq "number"
    expect(describe_type(1.5)).to eq "number"
    expect(describe_type("hi")).to eq "text"
    expect(describe_type(:hi)).to eq "label"
    expect(describe_type([1])).to eq "list"
    expect(describe_type({ a: 1 })).to eq "map"
    expect(describe_type(nil)).to eq "nothing"
    expect(describe_type(true)).to eq "unknown"
  end

  it "parse_answer understands several spellings" do
    expect(parse_answer("y")).to eq true
    expect(parse_answer("YES")).to eq true
    expect(parse_answer("n")).to eq false
    expect(parse_answer("No")).to eq false
    expect(parse_answer("maybe")).to be_nil
  end

  it "season maps months and rejects invalid ones" do
    expect(season(12)).to eq :winter
    expect(season(1)).to eq :winter
    expect(season(4)).to eq :spring
    expect(season(7)).to eq :summer
    expect(season(10)).to eq :autumn
    expect { season(13) }.to raise_error(ArgumentError)
    expect { season(0) }.to raise_error(ArgumentError)
  end
end
