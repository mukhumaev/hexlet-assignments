# frozen_string_literal: true

# BEGIN
def reverse(str)
  length = 0
  while true
    length += 1
    break if str[length].nil?
  end
  
  result = ''
  while length > 0
    length -= 1
    result += str[length]
  end
  result
end
# END
