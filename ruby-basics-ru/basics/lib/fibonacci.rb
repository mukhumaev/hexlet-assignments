# frozen_string_literal: true

# BEGIN
def fibonnacci(n)
  return nil if n < 0
  return n if n <= 1
  fibonacci(n - 1) + fibonacci(n - 2)
end
# END
