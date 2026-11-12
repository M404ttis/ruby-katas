require "level_2_objects/03_super"

describe "Level 2.3 – super" do
  describe Dog do
    let(:rex) { Dog.new("Rex", "Beagle") }

    it "is an Animal that remembers name and breed" do
      expect(Dog.superclass).to eq Animal
      expect(rex.name).to eq "Rex"
      expect(rex.breed).to eq "Beagle"
    end

    it "overrides speak" do
      expect(rex.speak).to eq "Woof"
    end

    it "extends describe with super" do
      expect(rex.describe).to eq "Rex the dog (Beagle)"
    end
  end

  describe Puppy do
    let(:pup) { Puppy.new("Rex", "Beagle", 3) }

    it "inherits from Dog" do
      expect(Puppy.superclass).to eq Dog
      expect(pup.name).to eq "Rex"
      expect(pup.breed).to eq "Beagle"
      expect(pup.age_months).to eq 3
    end

    it "builds on the Dog's speak" do
      expect(pup.speak).to eq "Woof!"
    end

    it "builds on the Dog's describe, which builds on Animal's" do
      expect(pup.describe).to eq "Rex the puppy (Beagle), 3 months old"
    end
  end

  describe Cat do
    it "defaults to indoor" do
      cat = Cat.new("Tom")
      expect(cat.name).to eq "Tom"
      expect(cat.indoor?).to eq true
    end

    it "accepts a keyword argument" do
      expect(Cat.new("Tom", indoor: false).indoor?).to eq false
    end

    it "speaks and describes itself" do
      cat = Cat.new("Tom")
      expect(cat.speak).to eq "Meow"
      expect(cat.describe).to eq "Tom the cat"
    end
  end

  it "Animal itself stays generic" do
    expect(Animal.new("Thing").speak).to eq "..."
  end
end
