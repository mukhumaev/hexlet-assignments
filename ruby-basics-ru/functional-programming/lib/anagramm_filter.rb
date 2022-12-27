# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, word_list)
  word_list.filter { |w| w.split('').sort == word.split('').sort }
end
# END
