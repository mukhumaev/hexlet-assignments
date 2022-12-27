# frozen_string_literal: true

# BEGIN
def get_same_parity(numbers)
  first = numbers.first.even?
  numbers.filter { |num| num.even? == first }
end
# END
