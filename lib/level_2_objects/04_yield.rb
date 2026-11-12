# Level 2.4 – yield and block_given?
# Run: rspec spec/level_2_objects/04_yield_spec.rb
#
# A method can accept a block without declaring it. `yield` hands control (and values)
# to that block and returns whatever the block returns.
#   def run; yield 5; end
#   run { |n| n * 2 }   # => 10
# `block_given?` tells you whether the caller passed a block at all.

# 1. Call the block exactly two times.
def twice
end

# 2. Your own Array#map: return a new array with the block applied to each element.
#    (Don't call array.map – use each and yield.)
def my_map(array)
end

# 3. Your own Array#select: keep elements for which the block returns truthy.
def my_select(array)
end

# 4. If a block is given, return the block's result for `value`; otherwise return value itself.
#    transform(3) => 3        transform(3) { |x| x * 10 } => 30
def transform(value)
end

# 5. Wrap a block with logging. Append "start: <label>" to `log`, run the block,
#    append "end: <label>", and return the block's result.
#    with_logging(log, "calc") { 42 }  # => 42, log is ["start: calc", "end: calc"]
def with_logging(log, label)
end

# 6. Yield every consecutive PAIR as two block arguments (yield a, b).
#    each_adjacent([1, 2, 3, 4]) { |a, b| ... } is called with (1,2), (2,3), (3,4)
def each_adjacent(array)
end

# 7. Yield the attempt number 1, 2, 3 ... up to max_attempts. Stop and return the block's
#    result as soon as it is truthy. If it never is, return nil.
def attempt(max_attempts)
end

# 8. Playlist already includes Enumerable. Enumerable gives you map, select, include?,
#    first, sort ... for free – but only once YOU define `each` using yield.
#    Without a block, `each` should return an enumerator: return to_enum(:each) unless block_given?
class Playlist
  include Enumerable

  def initialize(songs)
    @songs = songs
  end
end
