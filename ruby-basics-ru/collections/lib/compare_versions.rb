# frozen_string_literal: true

# BEGIN
def compare_versions(one, two)
  return 0 if one == two

  w1 = one.split('.').map(&:to_i)
  w2 = two.split('.').map(&:to_i)

  w1[0] >= w2[0] && w1[1] > w2[1] ? 1 : -1
end
# END
