# Level 1.1 – Basic types: Integer, Float, String, true/false/nil, Array, Hash
# Run: rspec spec/level_1_fundamentals/01_basic_types_spec.rb
#
# Fill in each method. An empty method returns nil, which is why every test fails at first.

# 1. Whole-number division, the remainder is thrown away: 7 / 2 => 3
def integer_division(a, b)
  # REVIEW (naive): a % b == 1 ? (a - 1) / b : a / b
  #   Both branches give the same result, so the ternary does nothing.
  #   Integer / Integer already floors (also for negatives: -7 / 2 => -4).
  # IDIOMATIC:
  a / b
end

# 2. Real division returning a Float: 7 and 2 => 3.5
def float_division(a, b)
  # GOOD as is. Converting one operand to Float is enough.
  # ALTERNATIVE: a.fdiv(b)  (built-in float division)
  a.to_f / b
end

# 3. The remainder of a divided by b (hint: the % operator).
def remainder_of(a, b)
  a % b
end

# 4. The last character of the string.
def last_char(str)
  str[-1]
end

# 5. The string in uppercase followed by "!"  ("hi" => "HI!")
def shout(str)
  # REVIEW (naive): str.upcase << '!'
  #   Works only because upcase returns a NEW string, so << mutates that copy.
  #   << mutates in place: on a frozen string it raises FrozenError, and
  #   on the caller's own string it would change their data. Don't build the habit.
  # IDIOMATIC (non-mutating):
  "#{str.upcase}!"
  # also fine: str.upcase + '!'
end

# 6. Return `value`, unless it is nil – then return `default`.
#    Careful: false is a real value and must be kept!
def value_or_default(value, default)
  # REVIEW (naive): if value.nil? / default / else / value / end  (correct, but 5 lines)
  #   You rightly avoided `value || default`: that would also replace false.
  # IDIOMATIC (ternary: condition ? if_true : if_false):
  value.nil? ? default : value
end

# 7. The second element of the array, or nil if there is none.
def second_element(array)
  # REVIEW (naive): array[1].nil? ? nil : array[1]
  #   "If it is nil return nil, otherwise return it" is just "return it".
  #   Indexing past the end already returns nil.
  # IDIOMATIC:
  array[1]
end

# 8. The value stored under `key` in the hash, or "unknown" if the key is missing.
def lookup(hash, key)
  # GOOD as is. fetch(key, default) only uses the default when the key is MISSING,
  # whereas `hash[key] || 'unknown'` would also replace a stored nil or false.
  hash.fetch(key, 'unknown')
end

# 9. The class of the value as a String: 42 => "Integer", nil => "NilClass"
def class_name_of(value)
  # REVIEW (naive): "#{value.class}"
  #   Interpolating one single value into a string is redundant
  #   (RuboCop: Style/RedundantInterpolation).
  # IDIOMATIC:
  value.class.to_s
  # also fine: value.class.name (but that returns nil for anonymous classes)
end
