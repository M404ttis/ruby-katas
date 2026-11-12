require "level_2_objects/02_self"

describe "Level 2.2 – self" do
  describe Temperature do
    it "stores and converts celsius" do
      t = Temperature.new(100)
      expect(t.celsius).to eq 100
      expect(t.fahrenheit).to eq 212.0
      expect(Temperature.new(0).fahrenheit).to eq 32.0
    end

    it "fahrenheit= converts back through the celsius setter" do
      t = Temperature.new(0)
      t.fahrenheit = 212
      expect(t.celsius).to eq 100.0
    end

    it "reset! uses the setter on self and returns self" do
      t = Temperature.new(37)
      expect(t.reset!).to equal(t)
      expect(t.celsius).to eq 0
    end

    it "warm_by returns self so calls can be chained" do
      t = Temperature.new(10)
      expect(t.warm_by(5)).to equal(t)
      expect(t.warm_by(5).warm_by(2).celsius).to eq 22
    end

    it "compares with another instance" do
      expect(Temperature.new(30).warmer_than?(Temperature.new(20))).to eq true
      expect(Temperature.new(10).warmer_than?(Temperature.new(20))).to eq false
    end

    it "has a class-method constructor" do
      t = Temperature.from_fahrenheit(32)
      expect(t).to be_a Temperature
      expect(t.celsius).to eq 0
    end
  end

  describe Registry do
    before { Registry.clear! }

    it "registers names on the class" do
      Registry.register("a")
      Registry.register("b")
      expect(Registry.names).to eq %w[a b]
      expect(Registry.size).to eq 2
    end

    it "returns the class from register so it can be chained" do
      expect(Registry.register("a").register("b")).to equal(Registry)
      expect(Registry.names).to eq %w[a b]
    end

    it "returns a copy of the names" do
      Registry.register("a")
      Registry.names << "hacked"
      expect(Registry.names).to eq %w[a]
    end

    it "can be cleared" do
      Registry.register("a")
      Registry.clear!
      expect(Registry.size).to eq 0
      expect(Registry.names).to eq []
    end
  end
end
