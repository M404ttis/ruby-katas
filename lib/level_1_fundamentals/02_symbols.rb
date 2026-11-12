# Level 1.2 – Symbols
# Run: rspec spec/level_1_fundamentals/02_symbols_spec.rb
#
# A Symbol (:open) is an immutable, unique name. Every :open in your program is the
# very same object, whereas every "open" string literal is a new object.

# 1. Turn a String into a Symbol: "active" => :active
def to_status(string)
end

# 2. Turn a snake_case Symbol into a readable String: :in_progress => "In progress"
def humanize(symbol)
end

# 3. Convert String keys to Symbol keys: { "a" => 1 } => { a: 1 }
def symbolize_keys(hash)
end

# 4. True only if a and b are the very same object in memory (hint: equal?).
#    :a and :a are. "a" and "a" (two separate strings) are not.
def same_object?(a, b)
end

# 5. Count how often each status occurs: [:open, :done, :open] => { open: 2, done: 1 }
def tally_statuses(statuses)
end

# 6. Keep only the Symbols of a mixed array: [1, :a, "b", :c] => [:a, :c]
def symbols_only(array)
end
