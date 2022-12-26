# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def make_censored(text, stop_words)

  censor = '$#%!'
  words = text.split

  words.map do |word|
    stop_words.any?(word) ? censor : word
  end.join(' ')
end
# END
# rubocop:enable Style/For
