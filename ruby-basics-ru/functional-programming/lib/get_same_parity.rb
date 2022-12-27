# frozen_string_literal: true

# BEGIN
def get_same_parity(numbers)
  return numbers unless numbers.any?

  first = numbers.first.even?
  numbers.filter { |num| num.even? == first }
end
# END
