require "level_1_fundamentals/06_string_interpolation"

describe "Level 1.6 – String interpolation" do
  it "introduce interpolates name and age" do
    expect(introduce("Ada", 36)).to eq "Hi, I'm Ada and I'm 36 years old."
    expect(introduce("Bo", 5)).to eq "Hi, I'm Bo and I'm 5 years old."
  end

  it "price_tag formats cents as dollars" do
    expect(price_tag("Coffee", 350)).to eq "Coffee: $3.50"
    expect(price_tag("Gum", 5)).to eq "Gum: $0.05"
    expect(price_tag("Book", 1999)).to eq "Book: $19.99"
  end

  it "padded_id pads with zeros" do
    expect(padded_id(42)).to eq "ID-0042"
    expect(padded_id(7)).to eq "ID-0007"
    expect(padded_id(12345)).to eq "ID-12345"
  end

  it "list_summary pluralises" do
    expect(list_summary(%w[apple pear fig])).to eq "3 items: apple, pear, fig"
    expect(list_summary(%w[apple])).to eq "1 item: apple"
    expect(list_summary([])).to eq "no items"
  end

  it "raw_template keeps the placeholder literal" do
    expect(raw_template).to eq 'Hello, #{name}'
  end

  it "card builds a multi-line string" do
    expect(card("Ada", "Developer")).to eq "Name: Ada\nRole: Developer\n"
  end
end
