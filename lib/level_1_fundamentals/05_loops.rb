# Level 1.5 – Loops: while, until, times, each, step, downto, loop/break/next
# Run: rspec spec/level_1_fundamentals/05_loops_spec.rb

# 1. Sum of 1..n using a `while` loop (no formula, no `sum`). sum_to(4) => 10, sum_to(0) => 0
def sum_to(n)
end

# 2. Array counting down from n to 1: countdown(3) => [3, 2, 1], countdown(0) => []
#    (try `until` or `downto`)
def countdown(n)
end

# 3. Positive multiples of k up to and including limit: multiples_of(3, 10) => [3, 6, 9]
#    (try `step`)
def multiples_of(k, limit)
end

# 4. Smallest power of two strictly greater than n, using `loop do ... break ... end`.
#    0 => 1, 1 => 2, 8 => 16, 100 => 128
def next_power_of_two(n)
end

# 5. Sum of only the odd numbers in the array, using `each` and `next` to skip evens.
def sum_of_odds(array)
end

# 6. The first ten multiples of n: times_table(3) => [3, 6, 9, ..., 30]
def times_table(n)
end

# 7. Collatz: while n != 1, if n is even halve it, otherwise do 3n + 1. Count the steps.
#    1 => 0, 6 => 8, 27 => 111
def collatz_steps(n)
end
