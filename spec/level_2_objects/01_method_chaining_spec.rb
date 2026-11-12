require "level_2_objects/01_method_chaining"

describe "Level 2.1 – Method chaining" do
  it "title_case cleans and capitalises" do
    expect(title_case("  hello   wORLD ")).to eq "Hello World"
    expect(title_case("ruby")).to eq "Ruby"
    expect(title_case("")).to eq ""
  end

  it "top_words returns the most frequent words" do
    expect(top_words("the cat and the hat and the bat", 2)).to eq %w[the and]
    expect(top_words("The the THE a", 1)).to eq %w[the]
  end

  it "top_words breaks ties alphabetically" do
    expect(top_words("pear apple fig", 2)).to eq %w[apple fig]
  end

  it "average_of_evens averages only even numbers" do
    expect(average_of_evens([1, 2, 3, 4, 10])).to be_within(0.001).of(5.333)
    expect(average_of_evens([2, 4])).to eq 3.0
    expect(average_of_evens([1, 3])).to eq 0.0
    expect(average_of_evens([])).to eq 0.0
  end

  describe QueryBuilder do
    it "builds a plain select" do
      expect(QueryBuilder.new("users").to_sql).to eq "SELECT * FROM users"
    end

    it "supports the full chain" do
      sql = QueryBuilder.new("users")
                        .where("age > 18")
                        .where("active = 1")
                        .order("name")
                        .limit(10)
                        .to_sql
      expect(sql).to eq "SELECT * FROM users WHERE age > 18 AND active = 1 ORDER BY name LIMIT 10"
    end

    it "leaves out parts that were not set" do
      expect(QueryBuilder.new("posts").limit(5).to_sql).to eq "SELECT * FROM posts LIMIT 5"
      expect(QueryBuilder.new("posts").order("id").to_sql).to eq "SELECT * FROM posts ORDER BY id"
    end

    it "returns self from every builder method" do
      qb = QueryBuilder.new("users")
      expect(qb.where("x = 1")).to equal(qb)
      expect(qb.order("x")).to equal(qb)
      expect(qb.limit(1)).to equal(qb)
    end
  end
end
