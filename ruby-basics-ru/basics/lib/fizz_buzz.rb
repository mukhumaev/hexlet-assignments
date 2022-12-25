# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop
  result = ''
  while start <= stop
    result += if 0 == start % 3 && 0 == start % 5
                "FizzBuzz "
              elsif 0 == start % 3
                "Fizz "
              elsif 0 == start % 5
                "Buzz "
              else
                "#{start} "
              end
    start += 1
  end
  result.chop
end
# END
