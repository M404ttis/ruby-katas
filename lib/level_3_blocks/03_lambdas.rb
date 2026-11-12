# Level 3.3 – Lambdas
# Run: rspec spec/level_3_blocks/03_lambdas_spec.rb
#
# A lambda is a stricter Proc:
#   * it checks its arguments (wrong count => ArgumentError)
#   * `return` inside a lambda only leaves the lambda, not the surrounding method
# Two ways to write one:  ->(x) { x + 1 }     lambda { |x| x + 1 }
# Call it with .call(x), .(x) or [x].

# 1. Square a number.
SQUARE = ->(x) { }

# 2. Add two numbers (use the `lambda { |a, b| }` spelling for practice).
ADD = lambda { |a, b| }

# 3. true if a String has at least 3 characters, false for nil or shorter strings.
#    Use an early `return false if s.nil?` INSIDE the lambda – it is allowed here.
LONG_ENOUGH = ->(s) { }

# 4. Return a lambda that counts: the first call returns 1, the second 2, ...
#    Every counter has its own private state (closure over a local variable).
def make_counter
end

# 5. Return a lambda for f(g(x)): compose(f, g).call(x) == f.call(g.call(x))
#    (Ruby also has f << g and f >> g – try them afterwards.)
def compose(f, g)
end

# 6. Given. Methods are not objects until you ask: method(:twice_value) gives a Method object.
def twice_value(x)
  x * 2
end

# Return a LAMBDA made from the method twice_value (hint: method(:twice_value).to_proc).
def lambda_from_method
end

# 7. Return the first element for which the lambda `test` returns true, else nil.
#    find_first([1, 2, 3, 4], ->(x) { x > 2 }) => 3
def find_first(array, test)
end
