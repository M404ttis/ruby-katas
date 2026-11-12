# Level 3.1 – Blocks as closures, &block, &:symbol
# Run: rspec spec/level_3_blocks/01_blocks_spec.rb
#
# A block is a chunk of code attached to a method call ({ ... } or do ... end).
# It remembers the variables around it (a "closure"):
#   total = 0
#   [1, 2].each { |n| total += n }   # the block can change `total`
#
# `&block` in a parameter list turns the block into a Proc object you can store or pass on.
# `&something` in a CALL turns a Proc (or Symbol, or Method) back into a block.

# 1. Return an array of the block's results for i = 0, 1, ... n-1.
#    repeat_collect(3) { |i| i * i } => [0, 1, 4]
def repeat_collect(n)
end

# 2. Capture the block as a Proc object and return it (nil if no block was given).
#    Use an explicit &block parameter.
def capture(&block)
end

# 3. Forward the block you received to Array#map using &block in the call.
#    pass_along([1, 2, 3]) { |x| x + 1 } => [2, 3, 4]
def pass_along(array, &block)
end

# 4. Return the names of all people. Use the &:symbol shortcut – no explicit block.
#    (&:name is the same as { |p| p.name })
def names_of(people)
end

# 5. Numbered list using each_with_index (block with TWO params):
#    numbered(%w[a b]) => ["1. a", "2. b"]
def numbered(items)
end

# 6. Hash blocks receive key and value as two params:
#    hash_to_lines({ a: 1, b: 2 }) => ["a=1", "b=2"]
def hash_to_lines(hash)
end

# 7. Closure: return the sum of the block's result for each element, accumulating in a
#    local variable that the block itself does NOT touch (you update it around the yield).
#    sum_by([1, 2, 3]) { |x| x * 10 } => 60
def sum_by(array)
end
