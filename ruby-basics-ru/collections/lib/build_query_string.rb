# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(query)
  res = ''
  sorted_query = query.sort_by { |key| key.to_s }.to_h

  sorted_query.each_pair do |key, val|
    res += "#{key}=#{val}&"
  end

  res.chop
end
# END
# rubocop:enable Style/For
