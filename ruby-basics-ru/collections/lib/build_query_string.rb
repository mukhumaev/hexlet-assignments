# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(query)
  res = ''
  query.each_pair do |k, v|
    res += "#{k}=#{v}&" 
  end

  res.chop
end
# END
# rubocop:enable Style/For
