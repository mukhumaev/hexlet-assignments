# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  censor = '$#%!'
  result = []

  stop_words.each do |stop_word|
    result = text.split.map do |word|
      censor if stop_word == word
    end
  end

  result.join(' ')
  # END
end

# rubocop:enable Style/For
