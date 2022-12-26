# frozen_string_literal: true

# BEGIN
def reverse(str)
  length = 0
  loop do
    length += 1
    break if str[length].nil?
  end

  result = ''
  while length.positive?
    length -= 1
    result += str[length]
  end
  result
end
# END
