# Level 2.1 – Method chaining
# Run: rspec spec/level_2_objects/01_method_chaining_spec.rb
#
# Chaining works because every method in the chain returns an object that has the next
# method. Read chains left to right: what does each step return?
#   "  a b ".strip.split.map(&:upcase)   # String -> String -> Array -> Array

# 1. Clean up and capitalise every word:  "  hello   wORLD " => "Hello World"
#    One chain: strip, split, map(&:capitalize), join(" ")
def title_case(str)
end

# 2. The n most frequent words (lowercased) of a text, ties broken alphabetically.
#    top_words("the cat and the hat and the bat", 2) => ["the", "and"]
#    Chain idea: downcase -> scan(/[a-z']+/) -> tally -> sort_by -> first(n) -> map(&:first)
def top_words(text, n)
end

# 3. Average of the even numbers as a Float, 0.0 if there are none.
#    average_of_evens([1, 2, 3, 4, 10]) => 5.333...
def average_of_evens(numbers)
end

# 4. Build your own chainable object. Every builder method must RETURN SELF,
#    otherwise the chain breaks (the next call would hit nil or the wrong object).
#
#    QueryBuilder.new("users")
#      .where("age > 18").where("active = 1")
#      .order("name")
#      .limit(10)
#      .to_sql
#    # => "SELECT * FROM users WHERE age > 18 AND active = 1 ORDER BY name LIMIT 10"
#
#    Parts that were not set are left out:  QueryBuilder.new("users").to_sql => "SELECT * FROM users"
class QueryBuilder
end
