# Level 1.3 – Conditionals: if / elsif / else, unless, ternary, && || !
# Run: rspec spec/level_1_fundamentals/03_conditionals_spec.rb

# 1. :positive, :negative or :zero
def sign_of(n)
end

# 2. Leap year: divisible by 4, except centuries – unless divisible by 400.
#    2024 => true, 1900 => false, 2000 => true
def leap_year?(year)
end

# 3. Classic FizzBuzz for a single number:
#    multiple of 3 and 5 => "FizzBuzz", of 3 => "Fizz", of 5 => "Buzz", otherwise the number itself.
def fizzbuzz(n)
end

# 4. Use `unless` (or a modifier): "Hello, Ada!" – but "Hello, stranger!" if the
#    name is nil or only whitespace.
def greeting(name)
end

# 5. Ticket price in euros:
#    under 6 => 0, under 18 => 5, 65 or older => 6, students (18-64) => 8, everyone else => 12
def ticket_price(age, student)
end

# 6. Use the ternary operator (condition ? a : b): "even" or "odd"
def even_or_odd(n)
end
