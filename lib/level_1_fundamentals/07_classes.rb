# Level 1.7 – Classes: initialize, instance variables, attr_*, class methods, errors
# Run: rspec spec/level_1_fundamentals/07_classes_spec.rb

# Person
#   Person.new("Ada", 36)
#   #name, #age          – readers (attr_reader)
#   #adult?              – true if age >= 18
#   #birthday!           – increases age by 1 and returns the new age
#   #to_s                – "Ada (36)"
#   Person.species       – class method returning "Homo sapiens"
#   Person.count         – how many Persons have been created so far (class-level state)
class Person
end

# BankAccount
#   BankAccount.new("Ada")          balance starts at 0
#   BankAccount.new("Ada", 100)     ...or at a given amount
#   #owner, #balance                readers
#   #deposit(amount)                adds to the balance and returns the new balance;
#                                   raises ArgumentError unless amount is positive
#   #withdraw(amount)               subtracts and returns the new balance;
#                                   raises InsufficientFundsError if balance is too low
class InsufficientFundsError < StandardError; end

class BankAccount
end
