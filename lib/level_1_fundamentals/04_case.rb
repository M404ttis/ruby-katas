# Level 1.4 – case / when
# Run: rspec spec/level_1_fundamentals/04_case_spec.rb
#
# `case` compares with === : ranges match numbers inside them, classes match their
# instances, and several values can share one `when` ("y", "yes").

# 1. Letter grade for a score 0-100:
#    90+ "A", 80-89 "B", 70-79 "C", 60-69 "D", below 60 "F"
def letter_grade(score)
end

# 2. Describe the kind of value (use `when Integer, Float` etc.):
#    Integer/Float => "number", String => "text", Symbol => "label",
#    Array => "list", Hash => "map", nil => "nothing", anything else => "unknown"
def describe_type(value)
end

# 3. Parse a yes/no answer, case-insensitive:
#    "y"/"yes" => true, "n"/"no" => false, anything else => nil
def parse_answer(input)
end

# 4. Season by month number (1-12), northern hemisphere:
#    12,1,2 => :winter  3-5 => :spring  6-8 => :summer  9-11 => :autumn
#    anything else => raise ArgumentError
def season(month)
end
