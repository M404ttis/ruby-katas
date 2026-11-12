# Level 2.3 – super and inheritance
# Run: rspec spec/level_2_objects/03_super_spec.rb
#
# `super` calls the same-named method in the parent class.
#   super          (no parens) -> passes along the SAME arguments the current method received
#   super(a, b)    -> passes exactly these arguments
#   super()        -> passes NO arguments
# Be careful: a bare `super` in a method with extra parameters will pass those extras too.

# Animal is done for you. Read it, then write the subclasses below.
class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def speak
    "..."
  end

  # "Rex the dog", "Tom the cat" – uses the class name of whoever is calling
  def describe
    "#{name} the #{self.class.name.downcase}"
  end
end

# Dog < Animal
#   Dog.new("Rex", "Beagle")   initialize takes name AND breed; hand name to the parent with super(name)
#   #breed                     reader
#   #speak                     "Woof"
#   #describe                  parent's describe + " (Beagle)"      => "Rex the dog (Beagle)"
class Dog < Animal
end

# Puppy < Dog
#   Puppy.new("Rex", "Beagle", 3)   third argument is age in months
#   #age_months                     reader
#   #speak                          the Dog's speak + "!"           => "Woof!"
#   #describe                       Dog's describe + ", 3 months old"
#                                   => "Rex the puppy (Beagle), 3 months old"
class Puppy < Dog
end

# Cat < Animal
#   Cat.new("Tom")  or  Cat.new("Tom", indoor: false)   keyword argument, default true
#   #indoor?        true/false
#   #speak          "Meow"
# Trap: the parent's initialize only accepts name. A bare `super` would also forward
# `indoor:` and blow up – so call super(name) explicitly.
class Cat < Animal
end
