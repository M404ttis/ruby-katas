# Level 1.6 – String interpolation, format, heredocs
# Run: rspec spec/level_1_fundamentals/06_string_interpolation_spec.rb
#
# "double quotes" interpolate #{expressions}, 'single quotes' do not.

# 1. introduce("Ada", 36) => "Hi, I'm Ada and I'm 36 years old."
def introduce(name, age)
end

# 2. Price tag from cents with two decimals (hint: format("%.2f", ...)):
#    price_tag("Coffee", 350) => "Coffee: $3.50"      price_tag("Gum", 5) => "Gum: $0.05"
def price_tag(item, cents)
end

# 3. Zero-padded id (hint: format("%04d", ...) or rjust): padded_id(42) => "ID-0042"
def padded_id(number)
end

# 4. Summary with correct pluralisation:
#    ["apple", "pear", "fig"] => "3 items: apple, pear, fig"
#    ["apple"]                => "1 item: apple"
#    []                       => "no items"
def list_summary(items)
end

# 5. Return exactly the text   Hello, #{name}   – WITHOUT interpolating it.
#    (The characters #, {, n, a, m, e, } literally appear in the result.)
def raw_template
end

# 6. Use a squiggly heredoc (<<~TEXT) to build this two-line card:
#    "Name: Ada\nRole: Developer\n"
def card(name, role)
end
