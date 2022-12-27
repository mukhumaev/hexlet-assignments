# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  males = users.filter { |user| user[:gender] == 'male' }
  males.each_with_object({}) do |male, acc|
    year = male[:birthday].split('-').first
    acc[year] ||= 0
    acc[year] += 1
  end
end
# END
