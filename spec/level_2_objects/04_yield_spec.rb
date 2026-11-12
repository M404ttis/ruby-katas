require "level_2_objects/04_yield"

describe "Level 2.4 – yield" do
  it "twice calls the block two times" do
    calls = 0
    twice { calls += 1 }
    expect(calls).to eq 2
  end

  it "my_map transforms each element" do
    expect(my_map([1, 2, 3]) { |x| x * 2 }).to eq [2, 4, 6]
    expect(my_map(%w[a b]) { |s| s.upcase }).to eq %w[A B]
    expect(my_map([]) { |x| x }).to eq []
  end

  it "my_select filters" do
    expect(my_select([1, 2, 3, 4]) { |x| x.even? }).to eq [2, 4]
    expect(my_select(%w[a bb ccc]) { |s| s.size > 1 }).to eq %w[bb ccc]
  end

  it "transform works with and without a block" do
    expect(transform(3)).to eq 3
    expect(transform(3) { |x| x * 10 }).to eq 30
  end

  it "with_logging wraps the block and returns its result" do
    log = []
    result = with_logging(log, "calc") do
      log << "working"
      42
    end
    expect(result).to eq 42
    expect(log).to eq ["start: calc", "working", "end: calc"]
  end

  it "each_adjacent yields consecutive pairs" do
    pairs = []
    each_adjacent([1, 2, 3, 4]) { |a, b| pairs << [a, b] }
    expect(pairs).to eq [[1, 2], [2, 3], [3, 4]]
  end

  it "each_adjacent yields nothing for fewer than two elements" do
    pairs = []
    each_adjacent([1]) { |a, b| pairs << [a, b] }
    expect(pairs).to eq []
  end

  it "attempt stops at the first truthy result" do
    seen = []
    result = attempt(5) { |i| seen << i; i == 3 ? "ok on #{i}" : nil }
    expect(result).to eq "ok on 3"
    expect(seen).to eq [1, 2, 3]
  end

  it "attempt gives up after max_attempts" do
    seen = []
    result = attempt(3) { |i| seen << i; false }
    expect(result).to be_nil
    expect(seen).to eq [1, 2, 3]
  end

  describe Playlist do
    let(:list) { Playlist.new(%w[intro verse chorus outro]) }

    it "yields each song" do
      songs = []
      list.each { |s| songs << s }
      expect(songs).to eq %w[intro verse chorus outro]
    end

    it "returns an enumerator without a block" do
      expect(list.each).to be_a Enumerator
    end

    it "gets Enumerable methods for free" do
      expect(list.map(&:upcase)).to eq %w[INTRO VERSE CHORUS OUTRO]
      expect(list.include?("verse")).to eq true
      expect(list.first(2)).to eq %w[intro verse]
      expect(list.sort).to eq %w[chorus intro outro verse]
      expect(list.select { |s| s.size > 5 }).to eq []
    end
  end
end
