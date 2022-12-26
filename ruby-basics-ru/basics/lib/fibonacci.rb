# frozen_string_literal: true

# BEGIN
def fibonnacci(num)
  return nil if num < 0
  return num if num <= 1
  fibonacci(num - 1) + fibonacci(num - 2)
end
# END
