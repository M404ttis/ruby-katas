# Level 3.4 – Proc vs lambda, side by side
# Run: rspec spec/level_3_blocks/04_proc_vs_lambda_spec.rb
#
#                  | proc / block             | lambda
#   ---------------+--------------------------+-----------------------------
#   arguments      | lenient (nil / ignored)  | strict (ArgumentError)
#   `return`       | returns from the METHOD  | returns from the lambda only
#   lambda?        | false                    | true
#
# Everything with a #call method is "callable": Proc, lambda and Method objects.

# 1. :lambda or :proc, depending on what was passed in.
def callable_kind(callable)
end

# 2. Call `callable` with args. If it complains about the number of arguments, return
#    :wrong_arguments instead of raising (rescue ArgumentError).
#    A lenient proc never complains, a lambda does.
def call_safely(callable, *args)
end

# 3. Return a lambda that pipes a value through all callables in order.
#    Must work with procs, lambdas AND Method objects (e.g. method(:Integer)).
#    pipeline(add_one, double, :to_s.to_proc).call(3) => "8"
def pipeline(*callables)
end

# 4. Return a lambda that caches results of `fn` by argument.
#    The wrapped fn must run only once per distinct argument.
def memoize(fn)
end

# 5. Predict before you run anything. What do these two methods return?
def proc_return_demo
  pr = Proc.new { return :from_proc }
  pr.call
  :after_proc
end

def lambda_return_demo
  l = -> { return :from_lambda }
  l.call
  :after_lambda
end

# Fill in your predictions (:from_proc, :after_proc, :from_lambda or :after_lambda).
# The spec runs the real methods and compares. Don't run them first – predict, then check.
PREDICTIONS = {
  proc_return_demo: nil,
  lambda_return_demo: nil
}
