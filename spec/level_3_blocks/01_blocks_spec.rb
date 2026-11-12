require "level_3_blocks/01_blocks"

describe "Level 3.1 – Blocks" do
  it "repeat_collect gathers block results" do
    expect(repeat_collect(3) { |i| i * i }).to eq [0, 1, 4]
    expect(repeat_collect(0) { |i| i }).to eq []
  end

  it "capture returns the block as a Proc" do
    pr = capture { |x| x + 1 }
    expect(pr).to be_a Proc
    expect(pr.call(1)).to eq 2
    expect(capture).to be_nil
  end

  it "pass_along forwards the block" do
    expect(pass_along([1, 2, 3]) { |x| x + 1 }).to eq [2, 3, 4]
    expect(pass_along(%w[a b], &:upcase)).to eq %w[A B]
  end

  it "names_of extracts names with &:name" do
    person = Struct.new(:name)
    expect(names_of([person.new("Ada"), person.new("Bo")])).to eq %w[Ada Bo]
  end

  it "numbered builds a numbered list" do
    expect(numbered(%w[a b c])).to eq ["1. a", "2. b", "3. c"]
    expect(numbered([])).to eq []
  end

  it "hash_to_lines destructures key and value" do
    expect(hash_to_lines({ a: 1, b: 2 })).to eq %w[a=1 b=2]
  end

  it "sum_by adds up block results" do
    expect(sum_by([1, 2, 3]) { |x| x * 10 }).to eq 60
    expect(sum_by([]) { |x| x }).to eq 0
  end

  it "blocks are closures over outside variables" do
    total = 0
    [1, 2, 3].each { |n| total += n }
    expect(total).to eq 6
  end
end
