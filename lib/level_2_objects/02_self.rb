# Level 2.2 – self
# Run: rspec spec/level_2_objects/02_self_spec.rb
#
# `self` is "the object currently running this code".
#   * inside an instance method  -> the instance
#   * inside `def self.foo`      -> the class itself
#   * inside the class body      -> the class itself
#
# Two rules you will need here:
#   1. To call a SETTER on yourself you must write `self.celsius = 5`.
#      Without `self.`, Ruby creates a local variable `celsius` instead!
#   2. Returning `self` from a method lets callers chain it.

# Temperature
#   Temperature.new(20)           celsius = 20
#   attr_accessor :celsius
#   #fahrenheit                   celsius * 9 / 5 + 32 as Float   (0 => 32.0)
#   #fahrenheit=(f)               converts to celsius and stores it. Use `self.celsius = ...`
#   #reset!                       sets celsius to 0 via the setter (`self.celsius = 0`), returns self
#   #warm_by(degrees)             adds degrees to celsius, returns self (so calls can be chained)
#   #warmer_than?(other)          true if my celsius is higher than other's
#   Temperature.from_fahrenheit(f) class method – builds a Temperature from Fahrenheit
class Temperature
end

# Registry – state that lives on the CLASS, not on instances.
#   Registry.register("a")        stores the name, returns Registry (so it can be chained)
#   Registry.names                => ["a", ...] in registration order (return a copy)
#   Registry.size                 number of names
#   Registry.clear!               removes everything
# Hint: inside `def self.register`, `self` is Registry, so @names is an instance variable
# of the class object itself (a "class-level instance variable").
class Registry
end
