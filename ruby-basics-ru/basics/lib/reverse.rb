# frozen_string_literal: true

# BEGIN
def reverse(str)
  i = 0
  reversed_str = ''
  loop do
    break if str[i].nil?
    reversed_str = str[i] + reversed_str
    i += 1
  end

  reversed_str
end
# END
