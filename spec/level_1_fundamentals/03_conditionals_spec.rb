require "level_1_fundamentals/03_conditionals"

describe "Level 1.3 – Conditionals" do
  it "sign_of classifies numbers" do
    expect(sign_of(5)).to eq :positive
    expect(sign_of(-2)).to eq :negative
    expect(sign_of(0)).to eq :zero
  end

  it "leap_year? follows the Gregorian rules" do
    expect(leap_year?(2024)).to eq true
    expect(leap_year?(2023)).to eq false
    expect(leap_year?(1900)).to eq false
    expect(leap_year?(2000)).to eq true
  end

  it "fizzbuzz handles one number" do
    expect(fizzbuzz(1)).to eq 1
    expect(fizzbuzz(3)).to eq "Fizz"
    expect(fizzbuzz(10)).to eq "Buzz"
    expect(fizzbuzz(15)).to eq "FizzBuzz"
    expect(fizzbuzz(30)).to eq "FizzBuzz"
  end

  it "greeting falls back for blank names" do
    expect(greeting("Ada")).to eq "Hello, Ada!"
    expect(greeting(nil)).to eq "Hello, stranger!"
    expect(greeting("")).to eq "Hello, stranger!"
    expect(greeting("   ")).to eq "Hello, stranger!"
  end

  it "ticket_price depends on age and student status" do
    expect(ticket_price(5, false)).to eq 0
    expect(ticket_price(6, false)).to eq 5
    expect(ticket_price(17, true)).to eq 5
    expect(ticket_price(30, true)).to eq 8
    expect(ticket_price(30, false)).to eq 12
    expect(ticket_price(65, false)).to eq 6
    expect(ticket_price(70, true)).to eq 6
  end

  it "even_or_odd uses a ternary" do
    expect(even_or_odd(4)).to eq "even"
    expect(even_or_odd(7)).to eq "odd"
    expect(even_or_odd(0)).to eq "even"
  end
end
