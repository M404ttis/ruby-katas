require "level_1_fundamentals/07_classes"

describe "Level 1.7 – Classes" do
  describe Person do
    let(:ada) { Person.new("Ada", 36) }

    it "exposes name and age" do
      expect(ada.name).to eq "Ada"
      expect(ada.age).to eq 36
    end

    it "does not allow changing the name from outside" do
      expect(ada).not_to respond_to(:name=)
    end

    it "knows if it is an adult" do
      expect(ada.adult?).to eq true
      expect(Person.new("Bo", 17).adult?).to eq false
      expect(Person.new("Cy", 18).adult?).to eq true
    end

    it "birthday! increases the age and returns it" do
      expect(ada.birthday!).to eq 37
      expect(ada.age).to eq 37
    end

    it "has a readable to_s" do
      expect(ada.to_s).to eq "Ada (36)"
      expect("#{ada}").to eq "Ada (36)"
    end

    it "has a class method species" do
      expect(Person.species).to eq "Homo sapiens"
    end

    it "counts created instances" do
      before = Person.count
      Person.new("X", 1)
      Person.new("Y", 2)
      expect(Person.count).to eq before + 2
    end
  end

  describe BankAccount do
    it "starts with 0 or a given balance" do
      expect(BankAccount.new("Ada").balance).to eq 0
      expect(BankAccount.new("Ada", 100).balance).to eq 100
      expect(BankAccount.new("Ada").owner).to eq "Ada"
    end

    it "deposits money" do
      account = BankAccount.new("Ada", 50)
      expect(account.deposit(25)).to eq 75
      expect(account.balance).to eq 75
    end

    it "rejects non-positive deposits" do
      account = BankAccount.new("Ada", 50)
      expect { account.deposit(0) }.to raise_error(ArgumentError)
      expect { account.deposit(-5) }.to raise_error(ArgumentError)
      expect(account.balance).to eq 50
    end

    it "withdraws money" do
      account = BankAccount.new("Ada", 50)
      expect(account.withdraw(20)).to eq 30
    end

    it "refuses to overdraw" do
      account = BankAccount.new("Ada", 50)
      expect { account.withdraw(100) }.to raise_error(InsufficientFundsError)
      expect(account.balance).to eq 50
    end
  end
end
