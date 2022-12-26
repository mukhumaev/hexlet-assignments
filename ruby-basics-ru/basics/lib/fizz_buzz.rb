# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop

  result = ''
  while start <= stop
    result += if (start % 3).zero? && (start % 5).zero?
                'FizzBuzz '
              elsif (start % 3).zero?
                'Fizz '
              elsif (start % 5).zero?
                'Buzz '
              else
                "#{start} "
              end
    start += 1
  end
  result.chop
end
# END
