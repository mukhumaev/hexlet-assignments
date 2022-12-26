# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  censor = '$#%!'
  result = text

  stop_words.each do |word|
    result = result.gsub(word, censor)
  end

  result
  # END
end

# rubocop:enable Style/For
