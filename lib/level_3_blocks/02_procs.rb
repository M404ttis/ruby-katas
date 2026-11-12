# Level 3.2 – Procs
# Run: rspec spec/level_3_blocks/02_procs_spec.rb
#
# A Proc is a block saved in an object. Create one with `proc { }` or `Proc.new { }`.
# Call it with .call(args), .(args) or [args].
#
# Procs are relaxed about arguments:
#   * missing arguments become nil, extra arguments are ignored
#   * a single array argument is auto-splatted over multiple params
# And `return` inside a proc returns from the METHOD that created it (see #4).

# 1. Return a Proc that multiplies its argument by n.
#    double = make_multiplier(2); double.call(4) => 8   (n is remembered: closure!)
def make_multiplier(n)
end

# 2. Return a Proc with two params |a, b| that returns [a, b].
#    Observe how it treats too few / too many arguments.
def lenient_pair
end

# 3. Return the arity (number of expected params) of the given block.
#    block_arity { |a, b| } => 2    block_arity { } => 0    block_arity { |*args| } => -1
def block_arity(&block)
end

# 4. Index of the first negative number, or nil. Do it with `each_with_index` and a
#    `return` INSIDE the block – it returns from first_negative_index itself.
def first_negative_index(numbers)
end

# 5. Return a Proc that applies f first, then g to the result.
#    compose_procs(f, g).call(x) == g.call(f.call(x))
def compose_procs(f, g)
end

# 6. Call every proc with the value and collect the results.
#    apply_all([double, square], 3) => [6, 9]
def apply_all(procs, value)
end

# 7. A Proc passed with & becomes the block: use that to map `array` with `pr`.
def map_with_proc(array, pr)
end

# 8. Return a curried Proc that sums three numbers, so it can be called step by step:
#    make_curried_sum.call(1).call(2).call(3) => 6      make_curried_sum.(1, 2).(3) => 6
#    Hint: proc { |a, b, c| ... }.curry
def make_curried_sum
end
