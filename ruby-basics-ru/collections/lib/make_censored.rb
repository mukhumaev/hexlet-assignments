# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  censor = '$#%!'

  stop_words.each do |word|
    text.gsub!(word, censor)
  end

  text
  # END
end

# rubocop:enable Style/For
